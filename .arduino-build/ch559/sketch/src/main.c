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

void setup() {
#if FEATURE_TEMP_CONTROL
    DS18B20_init(&tempSensor, PIN_TEMP_SENSOR);
#endif

    // 1. 初始化USB串口（优先，方便调试）
    USBController_begin(&usbCtrl);
    delay(500);

    LOG_LINE("=================================");
    LOG_LINE("CH552G Fan Control System v1.0");
    LOG_LINE("=================================");
    
    // 2. 初始化电压控制（Fail-Safe: 默认12V）
    LOG_LINE("[INIT] Voltage controller...");
    VoltageController_begin(&voltageCtrl, PIN_PWM_OUTPUT, PIN_VOLTAGE_ADC);
    delay(100);
    
#if FEATURE_TEMP_CONTROL
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
    LOG_LINE("[INIT] Fan monitor...");
    FanMonitor_begin(&fanMonitor, PIN_FAN_TACH);
    delay(100);
    
    // 5. 读取初始电压
    float init_voltage = VoltageController_readVoltage(&voltageCtrl);
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

void loop() {
    unsigned long now = millis();
    
    // ========== 1. USB通信处理 ==========
#if FEATURE_USB_PROTOCOL
    USBController_update(&usbCtrl);
    
    // 检测USB断连事件
    bool usb_connected = USBController_isConnected(&usbCtrl);
    if (usb_was_connected && !usb_connected) {
        // USB断连事件
        serial_println_str("[WARN] USB disconnected! Switching to AUTO mode");
        sysStatus.error_flags |= ERROR_USB_TIMEOUT;
        // 记录断连事件（可以添加日志）
    }
    usb_was_connected = usb_connected;
    
    // 判断工作模式
    bool usb_control_mode = usb_connected && USBController_isOverrideActive(&usbCtrl);
    sysStatus.auto_mode = !usb_control_mode;
    
    // 处理复位请求
    if (usbCtrl.reset_requested) {
        LOG_LINE("[INFO] Reset command received, unlocking output");
        VoltageController_unlockOutput(&voltageCtrl);
        sysStatus.error_flags = ERROR_NONE;  // 清除所有错误标志
        stall_retry_count = 0;
        stall_detect_time = 0;
        usbCtrl.reset_requested = false;
    }
#else
    sysStatus.auto_mode = true;
#endif
    
    // ========== 2. 温度更新与自主控制 ==========
    if (now - last_temp_update >= TEMP_UPDATE_INTERVAL) {
#if FEATURE_TEMP_CONTROL
#if FEATURE_USB_PROTOCOL
        if (sysStatus.auto_mode) {
            // 自主控制模式：温度映射到电压
            if (!TempController_update(&tempCtrl)) {
                sysStatus.error_flags |= ERROR_TEMP_SENSOR;
            } else {
                sysStatus.error_flags &= ~ERROR_TEMP_SENSOR;
            }
        } else {
            // USB控制模式：使用外部设置的电压
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
    
    // ========== 3. 电压检测 ==========
    if (now - last_voltage_check >= VOLTAGE_CHECK_INTERVAL) {
        VoltageController_updateVoltage(&voltageCtrl);
        
        // 检测电压异常（短路/过载）
        if (VoltageController_isVoltageAbnormal(&voltageCtrl)) {
            sysStatus.error_flags |= ERROR_VOLTAGE_ABNORMAL;
            // 锁定输出并设置PWM=100%（降低输出）
            VoltageController_lockOutput(&voltageCtrl);
            LOG_LINE("[ERROR] Voltage abnormal! Output locked!");
            LOG_LINE("[ERROR] Please power cycle or send reset command");
        } else {
            sysStatus.error_flags &= ~ERROR_VOLTAGE_ABNORMAL;
        }
        
        last_voltage_check = now;
    }
    
    // ========== 4. 风扇转速更新 ==========
    FanMonitor_updateRPM(&fanMonitor);
    
    // ========== 5. 堵转检测与处理 ==========
    if (FanMonitor_isStalled(&fanMonitor)) {
        sysStatus.error_flags |= ERROR_FAN_STALLED;
        
        // 首次检测到堵转
        if (stall_detect_time == 0) {
            stall_detect_time = now;
            LOG_LINE("[WARN] Fan stalled detected!");
            
            // 设置PWM=100%（降低电压，减轻负载）
            VoltageController_setVoltage(&voltageCtrl, VOUT_MIN);
        }
        
        // 延时后重试
        if (now - stall_detect_time >= STALL_RETRY_DELAY) {
            stall_retry_count++;
            
            if (stall_retry_count >= STALL_MAX_RETRIES) {
                // 超过最大重试次数，锁定输出等待上位机指令
                LOG_LINE("[ERROR] Fan stall retry limit reached! Output locked.");
                VoltageController_lockOutput(&voltageCtrl);
            } else {
                // 重试
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
        // 风扇恢复正常
        if (stall_detect_time != 0) {
            LOG_LINE("[OK] Fan recovered!");
            sysStatus.error_flags &= ~ERROR_FAN_STALLED;
            stall_detect_time = 0;
            stall_retry_count = 0;
        }
    }
    
    // ========== 6. 超温保护 ==========
#if FEATURE_TEMP_CONTROL
    if (TempController_isOverheat(&tempCtrl)) {
        sysStatus.error_flags |= ERROR_OVERHEAT;
        LOG_LINE("[WARN] Overheating detected!");

        // 超温时如果处于 USB 控制模式，强制切回自主模式
        // （自主模式的温度映射会自动提升电压加快散热）
#if FEATURE_USB_PROTOCOL
        if (usb_control_mode) {
            usbCtrl.override_active = false;
            LOG_LINE("[INFO] Overheat: forced AUTO mode");
        }
#endif
    } else {
        // 温度恢复正常，清除超温标志
        if (sysStatus.error_flags & ERROR_OVERHEAT) {
            sysStatus.error_flags &= ~ERROR_OVERHEAT;
            LOG_LINE("[OK] Temperature recovered, external control allowed again");
        }
    }
#endif
    
    // ========== 7. 更新系统状态 ==========
    sysStatus.temperature = TempController_getTemperature(&tempCtrl);
    sysStatus.voltage = VoltageController_getCurrentVoltage(&voltageCtrl);
    sysStatus.target_voltage = VoltageController_getTargetVoltage(&voltageCtrl);
    sysStatus.rpm = FanMonitor_getRPM(&fanMonitor);
    sysStatus.target_rpm = TempController_getTargetRPM(&tempCtrl);
    sysStatus.pwm_duty = VoltageController_getPWMDuty(&voltageCtrl);
    
    // ========== 8. 状态上报 ==========
    // GET:STATUS 命令立即响应
#if FEATURE_USB_PROTOCOL
    if (usbCtrl.status_requested) {
        USBController_sendStatus(&usbCtrl, &sysStatus);
        usbCtrl.status_requested = false;
    }

    if (now - last_status_send >= STATUS_SEND_INTERVAL) {
        if (USBController_isConnected(&usbCtrl)) {
            USBController_sendStatus(&usbCtrl, &sysStatus);
        } else {
    #if FEATURE_VERBOSE_LOG
            // 本地串口输出（调试用）
            serial_print_str("Temp:");
            serial_print_float(sysStatus.temperature, 2);
            serial_print_str("C | Volt:");
            serial_print_float(sysStatus.voltage, 2);
            serial_print_str("V | RPM:");
            serial_print_uint(sysStatus.rpm);
            serial_print_str(" | Mode:");
            serial_println_str(sysStatus.auto_mode ? "AUTO" : "USB");
#endif
        }
        
        last_status_send = now;
    }
#endif
    
    // 短暂延时，避免CPU满载
    delay(50);
}
