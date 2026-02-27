/**
 * @file usb_protocol.cpp
 * @brief USB通信协议模块实现
 */

#include "usb_protocol.h"

void USBController::begin() {
    Serial.begin(USB_BAUD_RATE);
    is_connected = false;
    pairing_state = PAIRING_IDLE;
    last_heartbeat = 0;
    override_active = false;
    rpm_override_active = false;
    temp_params_overridden = false;
    pwm_duty_overridden = false;
    reset_requested = false;
    status_requested = false;
    target_voltage_override = VOUT_DEFAULT;
    target_rpm_override = RPM_TARGET_MIN;
    override_temp_min = TEMP_MIN;
    override_temp_max = TEMP_MAX;
    override_temp_overheat = TEMP_OVERHEAT;
    override_pwm_duty = 0;
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
    
    // 心跳超时检测（仅配对完成后才计时）
    if (is_connected && (millis() - last_heartbeat > USB_HEARTBEAT_TIMEOUT)) {
        is_connected = false;
        pairing_state = PAIRING_IDLE;   // 断连后需要重新配对
        override_active = false;         // 断连时关闭外部控制
        rpm_override_active = false;
    }
}

void USBController::handleCommand(String cmd) {
    cmd.trim();
    if (cmd.length() == 0) return;

    // -------- 配对握手（任何状态下均可处理） --------
    if (cmd == "HELLO") {
        // 步骤2：回复设备信息，等待上位机确认
        pairing_state = PAIRING_WAITING_CONFIRM;
        Serial.println("DEVICE:CH552G_FAN_CTRL_V1.0");
        return;
    }

    if (cmd == "CONNECT") {
        if (pairing_state == PAIRING_WAITING_CONFIRM) {
            // 步骤4：配对完成，建立连接
            pairing_state = PAIRING_DONE;
            is_connected = true;
            last_heartbeat = millis();
            Serial.println("OK:CONNECTED");
        } else {
            Serial.println("ERR:NOT_PAIRED");
        }
        return;
    }

    // -------- 以下命令仅配对完成后处理 --------
    if (!is_connected) {
        Serial.println("ERR:NOT_CONNECTED");
        return;
    }

    // 每条命令均刷新心跳
    last_heartbeat = millis();

    // -------- PING 心跳 --------
    if (cmd == "PING") {
        Serial.println("PONG");
        return;
    }

    // -------- RESET 复位 --------
    if (cmd == "RESET") {
        reset_requested = true;
        Serial.println("OK:RESET");
        return;
    }

    // -------- GET 请求 --------
    if (cmd.startsWith("GET:")) {
        String key = cmd.substring(4);
        if (key == "STATUS") {
            status_requested = true;  // 标志位，由 main.cpp 立即推送
        } else {
            Serial.print("ERR:UNKNOWN_GET:");
            Serial.println(key);
        }
        return;
    }

    // -------- SET 请求 --------
    if (cmd.startsWith("SET:")) {
        String param = cmd.substring(4);

        if (param.startsWith("VOLTAGE=")) {
            float v = param.substring(8).toFloat();
            if (v >= VOUT_MIN && v <= VOUT_MAX) {
                target_voltage_override = v;
                override_active = true;
                Serial.print("OK:VOLTAGE=");
                Serial.println(v, 2);
            } else {
                Serial.println("ERR:VOLTAGE_OUT_OF_RANGE");
            }
        }
        else if (param.startsWith("RPM=")) {
            uint32_t rpm = (uint32_t)param.substring(4).toInt();
            if (rpm >= RPM_TARGET_MIN && rpm <= RPM_TARGET_MAX) {
                target_rpm_override = rpm;
                rpm_override_active = true;
                Serial.print("OK:RPM=");
                Serial.println(rpm);
            } else {
                Serial.println("ERR:RPM_OUT_OF_RANGE");
            }
        }
        else if (param.startsWith("TEMP_MIN=")) {
            float t = param.substring(9).toFloat();
            override_temp_min = t;
            temp_params_overridden = true;
            Serial.print("OK:TEMP_MIN=");
            Serial.println(t, 1);
        }
        else if (param.startsWith("TEMP_MAX=")) {
            float t = param.substring(9).toFloat();
            override_temp_max = t;
            temp_params_overridden = true;
            Serial.print("OK:TEMP_MAX=");
            Serial.println(t, 1);
        }
        else if (param.startsWith("TEMP_OVERHEAT=")) {
            float t = param.substring(14).toFloat();
            override_temp_overheat = t;
            temp_params_overridden = true;
            Serial.print("OK:TEMP_OVERHEAT=");
            Serial.println(t, 1);
        }
        else if (param.startsWith("PWM=")) {
            int duty = param.substring(4).toInt();
            if (duty >= 0 && duty <= 255) {
                override_pwm_duty = (uint8_t)duty;
                pwm_duty_overridden = true;
                override_active = true;
                Serial.print("OK:PWM=");
                Serial.println(duty);
            } else {
                Serial.println("ERR:PWM_OUT_OF_RANGE");
            }
        }
        else if (param == "MODE=AUTO") {
            override_active = false;
            rpm_override_active = false;
            Serial.println("OK:MODE=AUTO");
        }
        else if (param == "MODE=MANUAL") {
            override_active = true;
            Serial.println("OK:MODE=MANUAL");
        }
        else {
            Serial.print("ERR:UNKNOWN_SET:");
            Serial.println(param);
        }
        return;
    }

    Serial.print("ERR:UNKNOWN_CMD:");
    Serial.println(cmd);
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

    Serial.print("\"target_rpm\":");
    Serial.print(status->target_rpm);
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
