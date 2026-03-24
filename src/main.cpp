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

#include <Arduino.h>
#include "config.h"
#include "voltage_control.h"
#include "temp_sensor.h"
#include "fan_monitor.h"
#include "usb_protocol.h"
#include "DS18B20.h"

// ==================== 全局对象 ====================

DS18B20 tempSensor(PIN_TEMP_SENSOR);      // 温度传感器
VoltageController voltageCtrl;             // 电压控制器
TempController tempCtrl;                   // 温度控制器
FanMonitor fanMonitor;                     // 风扇监控
USBController usbCtrl;                     // USB通信

// ==================== 系统状态 ====================

SystemStatus sysStatus;                    // 系统状态
unsigned long last_temp_update = 0;        // 上次温度更新时间
unsigned long last_status_send = 0;        // 上次状态发送时间
unsigned long last_voltage_check = 0;      // 上次电压检测时间
unsigned long stall_detect_time = 0;       // 堵转检测时间
uint8_t stall_retry_count = 0;             // 堵转重试计数
bool usb_was_connected = false;            // USB之前的连接状态（用于检测断连）

// ==================== 初始化 ====================

void setup() {
    // 1. 初始化USB串口（优先，方便调试）
    usbCtrl.begin();
    delay(500);
    
    Serial.println("=================================");
    Serial.println("CH552G Fan Control System v1.0");
    Serial.println("=================================");
    
    // 2. 初始化电压控制（Fail-Safe: 默认12V）
    Serial.println("[INIT] Voltage controller...");
    voltageCtrl.begin(PIN_PWM_OUTPUT, PIN_VOLTAGE_ADC);
    delay(100);
    
    // 3. 初始化温度控制
    Serial.println("[INIT] Temperature sensor...");
    tempCtrl.begin(&tempSensor, &voltageCtrl);
    delay(200);
    
    if (tempCtrl.isReady()) {
        Serial.print("[OK] Temp sensor ready: ");
        Serial.print(tempCtrl.getTemperature());
        Serial.println(" C");
    } else {
        Serial.println("[WARN] Temp sensor not ready!");
    }
    
    // 4. 初始化风扇监控
    Serial.println("[INIT] Fan monitor...");
    fanMonitor.begin(PIN_FAN_TACH);
    delay(100);
    
    // 5. 读取初始电压
    float init_voltage = voltageCtrl.readVoltage();
    Serial.print("[INFO] Initial voltage: ");
    Serial.print(init_voltage);
    Serial.println(" V");
    
    // 6. 初始化系统状态
    sysStatus.temperature = tempCtrl.getTemperature();
    sysStatus.voltage = init_voltage;
    sysStatus.target_voltage = VOUT_DEFAULT;
    sysStatus.rpm = 0;
    sysStatus.target_rpm = RPM_TARGET_MIN;
    sysStatus.pwm_duty = 0;
    sysStatus.error_flags = ERROR_NONE;
    sysStatus.auto_mode = true;
    
    Serial.println("[READY] System started!");
    Serial.println("=================================\n");
}

// ==================== 主循环 ====================

void loop() {
    unsigned long now = millis();
    
    // ========== 1. USB通信处理 ==========
    usbCtrl.update();
    
    // 检测USB断连事件
    bool usb_connected = usbCtrl.isConnected();
    if (usb_was_connected && !usb_connected) {
        // USB断连事件
        Serial.println("[WARN] USB disconnected! Switching to AUTO mode");
        sysStatus.error_flags |= ERROR_USB_TIMEOUT;
        // 记录断连事件（可以添加日志）
    }
    usb_was_connected = usb_connected;
    
    // 判断工作模式
    bool usb_control_mode = usb_connected && usbCtrl.isOverrideActive();
    sysStatus.auto_mode = !usb_control_mode;
    
    // 处理复位请求
    if (usbCtrl.reset_requested) {
        Serial.println("[INFO] Reset command received, unlocking output");
        voltageCtrl.unlockOutput();
        sysStatus.error_flags = ERROR_NONE;  // 清除所有错误标志
        stall_retry_count = 0;
        stall_detect_time = 0;
        usbCtrl.reset_requested = false;
    }
    
    // ========== 2. 温度更新与自主控制 ==========
    if (now - last_temp_update >= TEMP_UPDATE_INTERVAL) {
        if (sysStatus.auto_mode) {
            // 自主控制模式：温度映射到电压
            if (!tempCtrl.update()) {
                sysStatus.error_flags |= ERROR_TEMP_SENSOR;
            } else {
                sysStatus.error_flags &= ~ERROR_TEMP_SENSOR;
            }
        } else {
            // USB控制模式：使用外部设置的电压
            float target_v = usbCtrl.getTargetVoltage();
            voltageCtrl.setVoltage(target_v);
            sysStatus.target_voltage = target_v;
        }
        
        last_temp_update = now;
    }
    
    // ========== 3. 电压检测 ==========
    if (now - last_voltage_check >= VOLTAGE_CHECK_INTERVAL) {
        voltageCtrl.updateVoltage();
        
        // 检测电压异常（短路/过载）
        if (voltageCtrl.isVoltageAbnormal()) {
            sysStatus.error_flags |= ERROR_VOLTAGE_ABNORMAL;
            // 锁定输出并设置PWM=100%（降低输出）
            voltageCtrl.lockOutput();
            Serial.println("[ERROR] Voltage abnormal! Output locked!");
            Serial.println("[ERROR] Please power cycle or send reset command");
        } else {
            sysStatus.error_flags &= ~ERROR_VOLTAGE_ABNORMAL;
        }
        
        last_voltage_check = now;
    }
    
    // ========== 4. 风扇转速更新 ==========
    fanMonitor.updateRPM();
    
    // ========== 5. 堵转检测与处理 ==========
    if (fanMonitor.isStalled()) {
        sysStatus.error_flags |= ERROR_FAN_STALLED;
        
        // 首次检测到堵转
        if (stall_detect_time == 0) {
            stall_detect_time = now;
            Serial.println("[WARN] Fan stalled detected!");
            
            // 设置PWM=100%（降低电压，减轻负载）
            voltageCtrl.setVoltage(VOUT_MIN);
        }
        
        // 延时后重试
        if (now - stall_detect_time >= STALL_RETRY_DELAY) {
            stall_retry_count++;
            
            if (stall_retry_count >= STALL_MAX_RETRIES) {
                // 超过最大重试次数，锁定输出等待上位机指令
                Serial.println("[ERROR] Fan stall retry limit reached! Output locked.");
                voltageCtrl.lockOutput();  // 真正锁定输出
            } else {
                // 重试
                Serial.print("[INFO] Fan stall retry ");
                Serial.print(stall_retry_count);
                Serial.println("...");
                fanMonitor.resetStall();
                stall_detect_time = 0;
            }
        }
    } else {
        // 风扇恢复正常
        if (stall_detect_time != 0) {
            Serial.println("[OK] Fan recovered!");
            sysStatus.error_flags &= ~ERROR_FAN_STALLED;
            stall_detect_time = 0;
            stall_retry_count = 0;
        }
    }
    
    // ========== 6. 超温保护 ==========
    if (tempCtrl.isOverheat()) {
        sysStatus.error_flags |= ERROR_OVERHEAT;
        Serial.println("[WARN] Overheating detected!");

        // 超温时如果处于 USB 控制模式，强制切回自主模式
        // （自主模式的温度映射会自动提升电压加快散热）
        if (usb_control_mode) {
            usbCtrl.override_active = false;
            Serial.println("[INFO] Overheat: forced AUTO mode");
        }
    } else {
        // 温度恢复正常，清除超温标志
        if (sysStatus.error_flags & ERROR_OVERHEAT) {
            sysStatus.error_flags &= ~ERROR_OVERHEAT;
            Serial.println("[OK] Temperature recovered, external control allowed again");
        }
    }
    
    // ========== 7. 更新系统状态 ==========
    sysStatus.temperature = tempCtrl.getTemperature();
    sysStatus.voltage = voltageCtrl.getCurrentVoltage();
    sysStatus.target_voltage = voltageCtrl.getTargetVoltage();
    sysStatus.rpm = fanMonitor.getRPM();
    sysStatus.target_rpm = tempCtrl.getTargetRPM();
    sysStatus.pwm_duty = voltageCtrl.getPWMDuty();
    
    // ========== 8. 状态上报 ==========
    // GET:STATUS 命令立即响应
    if (usbCtrl.status_requested) {
        usbCtrl.sendStatus(&sysStatus);
        usbCtrl.status_requested = false;
    }

    if (now - last_status_send >= STATUS_SEND_INTERVAL) {
        if (usbCtrl.isConnected()) {
            usbCtrl.sendStatus(&sysStatus);
        } else {
            // 本地串口输出（调试用）
            Serial.print("Temp:");
            Serial.print(sysStatus.temperature);
            Serial.print("C | Volt:");
            Serial.print(sysStatus.voltage);
            Serial.print("V | RPM:");
            Serial.print(sysStatus.rpm);
            Serial.print(" | Mode:");
            Serial.println(sysStatus.auto_mode ? "AUTO" : "USB");
        }
        
        last_status_send = now;
    }
    
    // 短暂延时，避免CPU满载
    delay(50);
}
