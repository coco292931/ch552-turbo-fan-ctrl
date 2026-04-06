#line 1 "C:\\Users\\tonyp\\Downloads\\ch552-turbo-fan-ctrl\\src\\main.c"
/**
 * @file main.cpp
 * @brief CH552G涡扇控制系统主程序
 * @version 1.0
 * @date 2026-02-20
 * 
 * 功能：
 * - 基于温度的自主电压调节（一次/二次函数映射）
 * - 风扇转速监控与堵转保护
 * - USB通信与远程控制
 * - Fail-Safe机制（MCU失效时恢复12V）
 */

#include "arduino_compat.h"
#include "config.h"
#include "voltage_control.h"
#include "temp_sensor.h"
#include "fan_monitor.h"
#include "usb_protocol.h"
#include "serial_compat.h"
#include "../lib/DS18B20/DS18B20.h"
#include <stdio.h>

#if FEATURE_VERBOSE_LOG
#define LOG_LINE(x) serial_println_str(x)
#else
#define LOG_LINE(x) do { (void)0; } while (0)
#endif

// main2 温度链路排查模式：仅保留 DS18B20 读取，屏蔽转速/电压采样干扰。
#define MAIN2_TEMP_ONLY_TEST 0

// main2 电压专项模式：暂时屏蔽温度与RPM链路，仅保留AV/TV输出。
#define MAIN2_VOLTAGE_ONLY_TEST 0

// main2 AIN扫描模式：仅输出 AIN0..AIN3 原始ADC值，不配置/使用其他业务引脚。
#define MAIN2_AIN_SCAN_ONLY 0

// ==================== 全局对象 ====================

DS18B20 tempSensor;                        // 温度传感器
__xdata VoltageController voltageCtrl;     // 电压控制器
__xdata TempController tempCtrl;           // 温度控制器
__xdata FanMonitor fanMonitor;             // 风扇监控
__xdata USBController usbCtrl;             // USB通信

// ==================== 系统状态 ====================

__xdata SystemStatus sysStatus;            // 系统状态
unsigned long last_temp_update = 0;        // 上次温度更新时间
unsigned long last_status_send = 0;        // 上次状态发送时间
unsigned long last_voltage_check = 0;      // 上次电压检测时间
unsigned long stall_detect_time = 0;       // 堵转检测时间
uint8_t stall_retry_count = 0;             // 堵转重试计数
bool usb_was_connected = false;            // USB之前的连接状态（用于检测断连）

// ==================== 初始化 ====================

// 纯底层 ADC 驱动，抛弃一切封装以及默认配置的副作用
uint8_t read_adc_raw(uint8_t channel) {
    // 【避开所有的位操作陷阱】
    // 将整个ADC_CTRL设为干净的值，强制锁定只切换需要的输入通道，关闭比较器和任何残余标记。
    ADC_CTRL = channel & 0x03;
    
    // 给采样电容充足的充电与通道切换稳定时间
    delayMicroseconds(20);
    
    // 强制清除中断标记（1表示完成，写0清零）
    ADC_IF = 0;
    
    // 发起转换请求
    ADC_START = 1;
    
    // 阻塞等待硬件模块将START拉低或者IF置高
    while (ADC_START == 1);
    
    return ADC_DATA;
}

void setup() {
    // AIN扫描模式下只保留USB串口，避免配置业务相关引脚。
#if MAIN2_AIN_SCAN_ONLY
    USBController_begin(&usbCtrl);
    delay(500);

    // 手动进入纯高阻态。这里我们采用开漏并且写1的严谨方式（兼容部分弱内置下拉）：
    // AIN0(1.1), AIN1(1.4), AIN2(1.5)
    P1_MOD_OC |= (1<<1) | (1<<4) | (1<<5);    // 置1开启开漏输出模式
    P1_DIR_PU &= ~((1<<1) | (1<<4) | (1<<5)); // 置0关闭上拉
    P1 |= (1<<1) | (1<<4) | (1<<5);           // 强行输出高电平

    // AIN3(3.2)
    P3_MOD_OC |= (1<<2);
    P3_DIR_PU &= ~(1<<2);
    P3 |= (1<<2);

    // 启用 ADC 时钟和电源并等待芯片内部模块起振
    ADC_CFG = bADC_EN | bADC_CLK;
    delay(20);

    return;
#endif

    // P1.5 仍有连线但不再用作 DS 引脚，保持上拉输入避免悬空干扰。
    pinMode(15, INPUT_PULLUP);

#if FEATURE_TEMP_CONTROL && !FEATURE_THERMISTOR_ADC && !MAIN2_VOLTAGE_ONLY_TEST
    DS18B20_init(&tempSensor, PIN_TEMP_SENSOR);
#endif
    float init_voltage = 0.0f;

    // 1. 初始化USB串口（优先，方便调试）
    USBController_begin(&usbCtrl);
    delay(500);

    LOG_LINE("=================================");
    LOG_LINE("CH552G Fan Control System v1.0");
    LOG_LINE("=================================");
    
#if !MAIN2_TEMP_ONLY_TEST
    // 2. 初始化电压控制（Fail-Safe: 默认12V）
    LOG_LINE("[INIT] Voltage controller...");
    VoltageController_begin(&voltageCtrl, PIN_PWM_OUTPUT, PIN_VOLTAGE_ADC);
    delay(100);
#endif
    
#if FEATURE_TEMP_CONTROL && !MAIN2_VOLTAGE_ONLY_TEST
    // 3. 初始化温度控制
    LOG_LINE("[INIT] Temperature sensor...");
    TempController_begin(&tempCtrl, &tempSensor, &voltageCtrl);
    delay(200);
    
    if (TempController_isReady(&tempCtrl)) {
        #if FEATURE_VERBOSE_LOG
        serial_print_str("[OK] Temp sensor ready: ");
        serial_print_float(TempController_getTemperature(&tempCtrl), 2);
        serial_println_str(" C");
        #endif
    } else {
        LOG_LINE("[WARN] Temp sensor not ready!");
    }
#else
    tempCtrl.current_temp = 25.0f;
    tempCtrl.target_rpm = RPM_TARGET_MIN;
    tempCtrl.sensor_ready = false;
#endif
    
    // 4. 初始化风扇监控
#if !MAIN2_TEMP_ONLY_TEST && !MAIN2_VOLTAGE_ONLY_TEST
    LOG_LINE("[INIT] Fan monitor...");
    FanMonitor_begin(&fanMonitor, PIN_FAN_TACH);
    delay(100);
#endif
    
    // 5. 读取初始电压
#if !MAIN2_TEMP_ONLY_TEST
    init_voltage = VoltageController_readVoltage(&voltageCtrl);
#endif
    #if FEATURE_VERBOSE_LOG
    serial_print_str("[INFO] Initial voltage: ");
    serial_print_float(init_voltage, 2);
    serial_println_str(" V");
    #endif
    
    // 6. 初始化系统状态
    sysStatus.temperature = TempController_getTemperature(&tempCtrl);
    sysStatus.voltage = init_voltage;
    sysStatus.target_voltage = VOUT_DEFAULT;
    sysStatus.rpm = 0;
    sysStatus.target_rpm = RPM_TARGET_MIN;
    sysStatus.pwm_duty = 0;
    sysStatus.error_flags = ERROR_NONE;
    sysStatus.auto_mode = true;
    
    LOG_LINE("[READY] System started!");
    LOG_LINE("=================================");
}

// ==================== 主循环 ====================

static void usb_write_str(const char* s) {
    while (*s) {
        USBSerial_write(*s++);
    }
}

static void usb_write_hex4(uint8_t v) {
    v &= 0x0F;
    USBSerial_write((char)(v < 10 ? ('0' + v) : ('A' + (v - 10))));
}

static void usb_write_hex8(uint8_t v) {
    usb_write_hex4((uint8_t)(v >> 4));
    usb_write_hex4(v);
}

static void usb_write_hex32(uint32_t v) {
    usb_write_hex8((uint8_t)(v >> 24));
    usb_write_hex8((uint8_t)(v >> 16));
    usb_write_hex8((uint8_t)(v >> 8));
    usb_write_hex8((uint8_t)v);
}

void main2(void) {
    unsigned long now = millis();
    static unsigned long last_report = 0;
    float temp_c = -999.0f;
    bool temp_ok = false;
    float actual_v;
    float target_v = VOUT_DEFAULT;
    uint32_t rpm;
    union {
        float f;
        uint32_t u;
    } temp_bits, actual_bits, expect_bits;

    if ((now - last_report) < 1000) {
        return;
    }
    last_report = now;

#if MAIN2_AIN_SCAN_ONLY
    {
        // AIN通道映射： AIN0=P1.1, AIN1=P1.4, AIN2=P1.5, AIN3=P3.2
        uint32_t ain0;
        uint32_t ain1;
        uint32_t ain2;
        uint32_t ain3;

        ain0 = (uint32_t)read_adc_raw(0);
        ain1 = (uint32_t)read_adc_raw(1);
        ain2 = (uint32_t)read_adc_raw(2);
        ain3 = (uint32_t)read_adc_raw(3);

        usb_write_hex32(ain0);
        USBSerial_write(',');
        usb_write_hex32(ain1);
        USBSerial_write(',');
        usb_write_hex32(ain2);
        USBSerial_write(',');
        usb_write_hex32(ain3);
        usb_write_str("\r\n");
    }
    return;
#endif

#if MAIN2_TEMP_ONLY_TEST
#if FEATURE_TEMP_CONTROL && !FEATURE_THERMISTOR_ADC
    temp_c = DS18B20_readTemperatureFast(&tempSensor);
#endif
    rpm = 0;
    actual_v = 0.0f;
    target_v = VOUT_DEFAULT;
#elif MAIN2_VOLTAGE_ONLY_TEST
    temp_c = 0.0f;
    (void)analogRead(PIN_VOLTAGE_ADC);
    rpm = (uint32_t)analogRead(PIN_VOLTAGE_ADC);
    actual_v = VoltageController_updateVoltage(&voltageCtrl);
    target_v = VoltageController_getTargetVoltage(&voltageCtrl);
#else
#if FEATURE_TEMP_CONTROL
    temp_ok = TempController_update(&tempCtrl);
    if (temp_ok) {
        temp_c = TempController_getTemperature(&tempCtrl);
    } else {
        // 温度传感器异常时执行回退：目标电压强制回默认值，避免输出失控。
        VoltageController_setVoltage(&voltageCtrl, VOUT_DEFAULT);
    }
#endif

    FanMonitor_updateRPM(&fanMonitor);
    rpm = FanMonitor_getRPM(&fanMonitor);
    // 实际电压：ADC 采样的当前输出电压
    actual_v = VoltageController_updateVoltage(&voltageCtrl);
    // 目标电压：当前控制器内部目标值（测试模式下可能长期保持默认值）
    target_v = VoltageController_getTargetVoltage(&voltageCtrl);
#endif

    temp_bits.f = temp_c;
    actual_bits.f = actual_v;
    expect_bits.f = target_v;

    // 输出格式（CSV，均为 8 位十六进制）：
    // 1) 温度 float 位模式
    // 2) 风扇转速 uint32
    // 3) 实际电压 float 位模式
    // 4) 目标电压 float 位模式
    usb_write_hex32(temp_bits.u);
    USBSerial_write(',');
    usb_write_hex32(rpm);
    USBSerial_write(',');
    usb_write_hex32(actual_bits.u);
    USBSerial_write(',');
    usb_write_hex32(expect_bits.u);
    usb_write_str("\r\n");
}

#if 0
// 归档：原控制主循环逻辑（仅保留源码参考，不参与编译）
// 说明：在 CH55x/SDCC 下，很多情况下“同一编译单元中的未调用函数”仍会带来体积开销，
// 因此这里用 #if 0 彻底屏蔽编译，避免影响 CH552 ROM。
static void loop_legacy_control_archived(void) {
    unsigned long now = millis();

#if FEATURE_USB_PROTOCOL
    USBController_update(&usbCtrl);
    bool usb_connected = USBController_isConnected(&usbCtrl);
    if (usb_was_connected && !usb_connected) {
        serial_println_str("[WARN] USB disconnected! Switching to AUTO mode");
        sysStatus.error_flags |= ERROR_USB_TIMEOUT;
    }
    usb_was_connected = usb_connected;

    bool usb_control_mode = usb_connected && USBController_isOverrideActive(&usbCtrl);
    sysStatus.auto_mode = !usb_control_mode;

    if (usbCtrl.reset_requested) {
        LOG_LINE("[INFO] Reset command received, unlocking output");
        VoltageController_unlockOutput(&voltageCtrl);
        sysStatus.error_flags = ERROR_NONE;
        stall_retry_count = 0;
        stall_detect_time = 0;
        usbCtrl.reset_requested = false;
    }
#else
    sysStatus.auto_mode = true;
#endif

    if (now - last_temp_update >= TEMP_UPDATE_INTERVAL) {
#if FEATURE_TEMP_CONTROL
#if FEATURE_USB_PROTOCOL
        if (sysStatus.auto_mode) {
            if (!TempController_update(&tempCtrl)) {
                sysStatus.error_flags |= ERROR_TEMP_SENSOR;
            } else {
                sysStatus.error_flags &= ~ERROR_TEMP_SENSOR;
            }
        } else {
            float target_v = USBController_getTargetVoltage(&usbCtrl);
            VoltageController_setVoltage(&voltageCtrl, target_v);
            sysStatus.target_voltage = target_v;
        }
#else
        if (!TempController_update(&tempCtrl)) {
            sysStatus.error_flags |= ERROR_TEMP_SENSOR;
        } else {
            sysStatus.error_flags &= ~ERROR_TEMP_SENSOR;
        }
#endif
#else
        VoltageController_setVoltage(&voltageCtrl, VOUT_DEFAULT);
#endif
        last_temp_update = now;
    }

    if (now - last_voltage_check >= VOLTAGE_CHECK_INTERVAL) {
        VoltageController_updateVoltage(&voltageCtrl);
        if (VoltageController_isVoltageAbnormal(&voltageCtrl)) {
            sysStatus.error_flags |= ERROR_VOLTAGE_ABNORMAL;
            VoltageController_lockOutput(&voltageCtrl);
            LOG_LINE("[ERROR] Voltage abnormal! Output locked!");
            LOG_LINE("[ERROR] Please power cycle or send reset command");
        } else {
            sysStatus.error_flags &= ~ERROR_VOLTAGE_ABNORMAL;
        }
        last_voltage_check = now;
    }

    FanMonitor_updateRPM(&fanMonitor);

    if (FanMonitor_isStalled(&fanMonitor)) {
        sysStatus.error_flags |= ERROR_FAN_STALLED;
        if (stall_detect_time == 0) {
            stall_detect_time = now;
            LOG_LINE("[WARN] Fan stalled detected!");
            VoltageController_setVoltage(&voltageCtrl, VOUT_MIN);
        }

        if (now - stall_detect_time >= STALL_RETRY_DELAY) {
            stall_retry_count++;
            if (stall_retry_count >= STALL_MAX_RETRIES) {
                LOG_LINE("[ERROR] Fan stall retry limit reached! Output locked.");
                VoltageController_lockOutput(&voltageCtrl);
            } else {
#if FEATURE_VERBOSE_LOG
                serial_print_str("[INFO] Fan stall retry ");
                serial_print_int(stall_retry_count);
                serial_println_str("...");
#endif
                FanMonitor_resetStall(&fanMonitor);
                stall_detect_time = 0;
            }
        }
    } else {
        if (stall_detect_time != 0) {
            LOG_LINE("[OK] Fan recovered!");
            sysStatus.error_flags &= ~ERROR_FAN_STALLED;
            stall_detect_time = 0;
            stall_retry_count = 0;
        }
    }

#if FEATURE_TEMP_CONTROL
    if (TempController_isOverheat(&tempCtrl)) {
        sysStatus.error_flags |= ERROR_OVERHEAT;
        LOG_LINE("[WARN] Overheating detected!");
#if FEATURE_USB_PROTOCOL
        if (usb_control_mode) {
            usbCtrl.override_active = false;
            LOG_LINE("[INFO] Overheat: forced AUTO mode");
        }
#endif
    } else {
        if (sysStatus.error_flags & ERROR_OVERHEAT) {
            sysStatus.error_flags &= ~ERROR_OVERHEAT;
            LOG_LINE("[OK] Temperature recovered, external control allowed again");
        }
    }
#endif

    sysStatus.temperature = TempController_getTemperature(&tempCtrl);
    sysStatus.voltage = VoltageController_getCurrentVoltage(&voltageCtrl);
    sysStatus.target_voltage = VoltageController_getTargetVoltage(&voltageCtrl);
    sysStatus.rpm = FanMonitor_getRPM(&fanMonitor);
    sysStatus.target_rpm = TempController_getTargetRPM(&tempCtrl);
    sysStatus.pwm_duty = VoltageController_getPWMDuty(&voltageCtrl);

#if FEATURE_USB_PROTOCOL
    if (usbCtrl.status_requested) {
        USBController_sendStatus(&usbCtrl, &sysStatus);
        usbCtrl.status_requested = false;
    }

    if (now - last_status_send >= STATUS_SEND_INTERVAL) {
        if (USBController_isConnected(&usbCtrl)) {
            USBController_sendStatus(&usbCtrl, &sysStatus);
        }
        last_status_send = now;
    }
#endif

    delay(50);
}
#endif

void loop() {
    main2();
}
