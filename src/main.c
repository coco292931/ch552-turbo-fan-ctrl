/**
 * @file main.c
 * @brief ESP8266 涡扇控制系统主程序
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
VoltageController voltageCtrl;             // 电压控制器
TempController tempCtrl;                   // 温度控制器
FanMonitor fanMonitor;                     // 风扇监控
USBController usbCtrl;                     // 串口协议控制器

// ==================== 系统状态 ====================

SystemStatus sysStatus;                   // 系统状态
unsigned long last_temp_update = 0;        // 上次温度更新时间
unsigned long last_voltage_check = 0;      // 上次电压检测时间
unsigned long stall_detect_time = 0;       // 堵转检测时间
uint8_t stall_retry_count = 0;             // 堵转重试计数

// ==================== 初始化 ====================

void setup() {
    analogWriteRange(PWM_RESOLUTION);
    analogWriteFreq(PWM_FREQ);

#if FEATURE_TEMP_CONTROL
    DS18B20_init(&tempSensor, PIN_TEMP_SENSOR);
#endif
    float init_voltage = 0.0f;

    // 1. 初始化USB串口（优先，方便调试）
    USBController_begin(&usbCtrl);
    delay(500);

    LOG_LINE("=================================");
    LOG_LINE("ESP8266 Fan Control System v1.0");
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
    init_voltage = VoltageController_readVoltage(&voltageCtrl);
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

static void loop_control(void) {
    unsigned long now = millis();

#if FEATURE_USB_PROTOCOL
    USBController_update(&usbCtrl);

    // 优先级：PWM 覆盖 > 电压覆盖 > AUTO
    if (USBController_isConnected(&usbCtrl) && usbCtrl.pwm_duty_overridden) {
        sysStatus.auto_mode = false;
        analogWrite(PIN_PWM_OUTPUT, (uint16_t)usbCtrl.override_pwm_duty);
        sysStatus.pwm_duty = usbCtrl.override_pwm_duty;
    } else
    // 外部控制：USB 协议模块内部通过串口命令维护连接/心跳。
    // 当 override_active 打开时进入手动模式，否则保持 AUTO。
    if (USBController_isConnected(&usbCtrl) && USBController_isOverrideActive(&usbCtrl)) {
        sysStatus.auto_mode = false;
        VoltageController_setVoltage(&voltageCtrl, USBController_getTargetVoltage(&usbCtrl));
    } else {
        sysStatus.auto_mode = true;
    }

    if (usbCtrl.reset_requested) {
        VoltageController_unlockOutput(&voltageCtrl);
        sysStatus.error_flags = ERROR_NONE;
        stall_retry_count = 0;
        stall_detect_time = 0;

        usbCtrl.override_active = false;
        usbCtrl.rpm_override_active = false;
        usbCtrl.temp_params_overridden = false;
        usbCtrl.pwm_duty_overridden = false;
        usbCtrl.status_requested = false;
        usbCtrl.reset_requested = false;
    }
#else
    sysStatus.auto_mode = true;
#endif

#if FEATURE_TEMP_CONTROL
    if (sysStatus.auto_mode && (now - last_temp_update >= TEMP_UPDATE_INTERVAL)) {
        if (!TempController_update(&tempCtrl)) {
            sysStatus.error_flags |= ERROR_TEMP_SENSOR;
        } else {
            sysStatus.error_flags &= ~ERROR_TEMP_SENSOR;
        }
        last_temp_update = now;
    }
#endif

    if (now - last_voltage_check >= VOLTAGE_CHECK_INTERVAL) {
        VoltageController_updateVoltage(&voltageCtrl);
        if (VoltageController_isVoltageAbnormal(&voltageCtrl)) {
            sysStatus.error_flags |= ERROR_VOLTAGE_ABNORMAL;
            VoltageController_lockOutput(&voltageCtrl);
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
            VoltageController_setVoltage(&voltageCtrl, VOUT_MIN);
        }

        if (now - stall_detect_time >= STALL_RETRY_DELAY) {
            stall_retry_count++;
            if (stall_retry_count >= STALL_MAX_RETRIES) {
                VoltageController_lockOutput(&voltageCtrl);
            } else {
                FanMonitor_resetStall(&fanMonitor);
                stall_detect_time = 0;
            }
        }
    } else {
        if (stall_detect_time != 0) {
            sysStatus.error_flags &= ~ERROR_FAN_STALLED;
            stall_detect_time = 0;
            stall_retry_count = 0;
        }
    }

#if FEATURE_TEMP_CONTROL
    if (TempController_isOverheat(&tempCtrl)) {
        sysStatus.error_flags |= ERROR_OVERHEAT;
        sysStatus.auto_mode = true;
    } else if (sysStatus.error_flags & ERROR_OVERHEAT) {
        sysStatus.error_flags &= ~ERROR_OVERHEAT;
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
#endif

    delay(20);
}

void loop() {
    loop_control();
}
