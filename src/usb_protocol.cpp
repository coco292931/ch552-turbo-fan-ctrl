/**
 * @file usb_protocol.cpp
 * @brief USB通信协议模块实现
 */

#include "usb_protocol.h"

void USBController::begin() {
    Serial.begin(USB_BAUD_RATE);
    is_connected = false;
    last_heartbeat = 0;
    override_active = false;
    reset_requested = false;
    target_voltage_override = 12.0;
    rx_buffer = "";
}

void USBController::update() {
    // 处理接收数据
    while (Serial.available()) {
        char c = Serial.read();
        
        if (c == '\n' || c == '\r') {
            if (rx_buffer.length() > 0) {
                handleCommand(rx_buffer);
                rx_buffer = "";
                
                // 更新心跳
                last_heartbeat = millis();
                is_connected = true;
            }
        } else {
            rx_buffer += c;
            
            // 防止缓冲区溢出
            if (rx_buffer.length() > 128) {
                rx_buffer = "";
            }
        }
    }
    
    // 心跳超时检测
    if (is_connected && (millis() - last_heartbeat > USB_HEARTBEAT_TIMEOUT)) {
        is_connected = false;
        override_active = false;  // 断连时关闭外部控制
    }
}

void USBController::handleCommand(String cmd) {
    cmd.trim();
    
    // 简化的命令解析
    // 支持格式：
    // GET:STATUS
    // SET:VOLTAGE=8.5
    // SET:MODE=AUTO
    // SET:MODE=MANUAL
    // RESET (解除锁定)
    
    if (cmd.startsWith("GET:")) {
        // GET请求 - 不做处理，由sendStatus主动发送
    }
    else if (cmd.startsWith("SET:VOLTAGE=")) {
        String value = cmd.substring(12);
        float voltage = value.toFloat();
        
        if (voltage >= VOUT_MIN && voltage <= VOUT_MAX) {
            target_voltage_override = voltage;
            override_active = true;
            
            // 确认应答
            Serial.print("OK:VOLTAGE=");
            Serial.println(voltage);
        }
    }
    else if (cmd.startsWith("SET:MODE=")) {
        String mode = cmd.substring(9);
        
        if (mode == "AUTO") {
            override_active = false;
            Serial.println("OK:MODE=AUTO");
        }
        else if (mode == "MANUAL") {
            override_active = true;
            Serial.println("OK:MODE=MANUAL");
        }
    }
    else if (cmd == "RESET") {
        // 复位命令（解除锁定）
        reset_requested = true;
        Serial.println("OK:RESET");
    }
    else if (cmd == "PING") {
        // 心跳应答
        Serial.println("PONG");
    }
}

String USBController::parseValue(String cmd, String key) {
    int idx = cmd.indexOf(key);
    if (idx < 0) return "";
    
    int start = idx + key.length();
    int end = cmd.indexOf(',', start);
    if (end < 0) end = cmd.indexOf('}', start);
    if (end < 0) end = cmd.length();
    
    return cmd.substring(start, end);
}

void USBController::sendStatus(const SystemStatus* status) {
    // 简化的JSON格式输出
    Serial.print("{");
    
    Serial.print("\"temp\":");
    Serial.print(status->temperature, 2);
    Serial.print(",");
    
    Serial.print("\"volt\":");
    Serial.print(status->voltage, 2);
    Serial.print(",");
    
    Serial.print("\"target\":");
    Serial.print(status->target_voltage, 2);
    Serial.print(",");
    
    Serial.print("\"rpm\":");
    Serial.print(status->rpm);
    Serial.print(",");
    
    Serial.print("\"pwm\":");
    Serial.print(status->pwm_duty);
    Serial.print(",");
    
    Serial.print("\"error\":\"0x");
    Serial.print(status->error_flags, HEX);
    Serial.print("\",");
    
    Serial.print("\"mode\":\"");
    Serial.print(status->auto_mode ? "AUTO" : "MANUAL");
    Serial.print("\"");
    
    Serial.println("}");
}
