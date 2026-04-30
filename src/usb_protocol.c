/**
 * @file usb_protocol.c
 * @brief 串口文本协议模块实现（C 风格）
 *
 * 设计目标：
 * - 初始状态：未连接=自主控制
 * - 配对流程：HELLO -> 设备信息 -> CONNECT -> OK:CONNECTED
 * - GET/SET：仅在连接建立后允许
 * - 心跳：上位机定期发起请求（PING/GET 等），超时则断连并回到自主控制
 */

#include "usb_protocol.h"
#include "serial_compat.h"

#if FEATURE_USB_PROTOCOL

static bool usb_str_eq(const char* a, const char* b) {
    while (*a && *b) {
        if (*a != *b) {
            return false;
        }
        a++;
        b++;
    }
    return (*a == '\0') && (*b == '\0');
}

static bool usb_starts_with(const char* s, const char* prefix) {
    while (*prefix) {
        if (*s != *prefix) {
            return false;
        }
        s++;
        prefix++;
    }
    return true;
}

static const char* usb_find_char(const char* s, char c) {
    while (*s) {
        if (*s == c) {
            return s;
        }
        s++;
    }
    return (const char*)0;
}

static uint32_t usb_parse_u32(const char* s) {
    uint32_t v = 0;
    while (*s >= '0' && *s <= '9') {
        v = v * 10u + (uint32_t)(*s - '0');
        s++;
    }
    return v;
}

static int usb_parse_i32(const char* s) {
    int sign = 1;
    int v = 0;
    if (*s == '-') {
        sign = -1;
        s++;
    } else if (*s == '+') {
        s++;
    }
    while (*s >= '0' && *s <= '9') {
        v = v * 10 + (*s - '0');
        s++;
    }
    return sign * v;
}

static float usb_parse_float(const char* s) {
    int sign = 1;
    float int_part = 0.0f;
    float frac_part = 0.0f;
    float frac_scale = 1.0f;

    if (*s == '-') {
        sign = -1;
        s++;
    } else if (*s == '+') {
        s++;
    }

    while (*s >= '0' && *s <= '9') {
        int_part = int_part * 10.0f + (float)(*s - '0');
        s++;
    }

    if (*s == '.') {
        s++;
        while (*s >= '0' && *s <= '9') {
            frac_part = frac_part * 10.0f + (float)(*s - '0');
            frac_scale *= 10.0f;
            s++;
        }
    }

    return (float)sign * (int_part + frac_part / frac_scale);
}

static void usb_set_connected(USBController* uc) {
    uc->is_connected = true;
    uc->pairing_state = PAIRING_DONE;
    uc->last_heartbeat = millis();
}

static void usb_set_disconnected(USBController* uc, bool due_to_timeout) {
    uc->is_connected = false;
    uc->pairing_state = PAIRING_IDLE;
    uc->last_heartbeat = millis();

    // 断连即回到自主控制：清除所有上位机覆盖
    uc->override_active = false;
    uc->voltage_override_active = false;
    uc->rpm_override_active = false;
    uc->temp_params_overridden = false;
    uc->pwm_duty_overridden = false;

    if (due_to_timeout) {
        uc->timeout_report_pending = true;
    }
}

static void usb_clear_overrides(USBController* uc) {
    uc->override_active = false;
    uc->voltage_override_active = false;
    uc->rpm_override_active = false;
    uc->pwm_duty_overridden = false;
    uc->temp_params_overridden = false;
}

static void usb_reply_ok_key_value(const char* key, const char* value) {
    serial_print_str("OK:");
    serial_print_str(key);
    if (value) {
        serial_print_str("=");
        serial_print_str(value);
    }
    serial_println();
}

static void usb_reply_ok_key_uint(const char* key, uint32_t value) {
    serial_print_str("OK:");
    serial_print_str(key);
    serial_print_str("=");
    serial_println_uint(value);
}

static void usb_reply_ok_key_float1(const char* key, float value) {
    serial_print_str("OK:");
    serial_print_str(key);
    serial_print_str("=");
    serial_println_float(value, 1);
}

static void usb_reply_ok_key_float2(const char* key, float value) {
    serial_print_str("OK:");
    serial_print_str(key);
    serial_print_str("=");
    serial_println_float(value, 2);
}

static bool usb_key_equals(const char* key, uint8_t key_len, const char* literal) {
    uint8_t i;
    for (i = 0; i < key_len; i++) {
        if (literal[i] == '\0' || key[i] != literal[i]) {
            return false;
        }
    }
    return literal[key_len] == '\0';
}

static void usb_print_key_segment(const char* key, uint8_t key_len) {
    uint8_t i;
    for (i = 0; i < key_len; i++) {
        serial_write(key[i]);
    }
}

static bool usb_handle_get(USBController* uc, const char* key) {
    if (usb_str_eq(key, "STATUS")) {
        uc->status_requested = true;
        return true;
    }

    if (usb_str_eq(key, "INFO")) {
        serial_println_str("{\"device\":\"ESP8266_FAN_CTRL\",\"fw\":\"V1.0\",\"proto\":1}");
        return true;
    }

    if (usb_str_eq(key, "MODE")) {
        serial_print_str("OK:MODE=");
        serial_println_str(uc->override_active ? "MANUAL" : "AUTO");
        return true;
    }

    if (usb_str_eq(key, "ECHO")) {
        serial_print_str("OK:ECHO=");
        serial_println_uint(uc->echo_enabled ? 1u : 0u);
        return true;
    }

    if (usb_str_eq(key, "OVERRIDE")) {
        serial_print_str("{");
        serial_print_str("\"manual\":");
        serial_print_uint(uc->override_active ? 1u : 0u);
        serial_print_str(",\"pwm\":");
        serial_print_uint(uc->pwm_duty_overridden ? 1u : 0u);
        serial_print_str(",\"voltage\":");
        serial_print_uint(uc->voltage_override_active ? 1u : 0u);
        serial_print_str(",\"rpm\":");
        serial_print_uint(uc->rpm_override_active ? 1u : 0u);
        serial_print_str(",\"pwm_val\":");
        serial_print_uint((uint32_t)uc->override_pwm_duty);
        serial_print_str(",\"voltage_val\":");
        serial_print_float(uc->target_voltage_override, 2);
        serial_print_str(",\"rpm_val\":");
        serial_print_uint(uc->target_rpm_override);
        serial_println_str("}");
        return true;
    }

    if (usb_str_eq(key, "CONFIG")) {
        serial_print_str("{");
        serial_print_str("\"vout_min\":");
        serial_print_float(VOUT_MIN, 2);
        serial_print_str(",\"vout_max\":");
        serial_print_float(VOUT_MAX, 2);
        serial_print_str(",\"temp_min\":");
        serial_print_float(uc->override_temp_min, 1);
        serial_print_str(",\"temp_max\":");
        serial_print_float(uc->override_temp_max, 1);
        serial_print_str(",\"temp_overheat\":");
        serial_print_float(uc->override_temp_overheat, 1);
        serial_print_str(",\"rpm_min\":");
        serial_print_uint(RPM_TARGET_MIN);
        serial_print_str(",\"rpm_max\":");
        serial_print_uint(RPM_TARGET_MAX);
        serial_print_str(",\"pwm_freq\":");
        serial_print_uint(PWM_FREQ);
        serial_print_str(",\"pwm_res\":");
        serial_print_uint(PWM_RESOLUTION);
        serial_print_str(",\"adc_coeff\":");
        serial_print_float(ADC_TO_VOLTAGE_COEFF, 6);
        serial_print_str(",\"hb_to\":");
        serial_print_uint(USB_HEARTBEAT_TIMEOUT);
        serial_print_str(",\"pair_to\":");
        serial_print_uint(USB_PAIRING_TIMEOUT);
        serial_print_str(",\"echo\":");
        serial_print_uint(uc->echo_enabled ? 1u : 0u);
        serial_println_str("}");
        return true;
    }
    return false;
}

static bool usb_handle_set(USBController* uc, const char* key, uint8_t key_len, const char* value) {
    if (usb_key_equals(key, key_len, "UNLOCK")) {
#if FEATURE_HOST_UNLOCK_OUTPUT
        int v = usb_parse_i32(value);
        if (v != 0) {
            uc->unlock_requested = true;
            serial_println_str("OK:UNLOCK");
            return true;
        }
        return false;
#else
        (void)value;
        serial_println_str("ERR:UNLOCK_DISABLED");
        return true;
#endif
    }

    if (usb_key_equals(key, key_len, "ECHO")) {
        int v = usb_parse_i32(value);
        uc->echo_enabled = (v != 0);
        serial_print_str("OK:ECHO=");
        serial_println_uint(uc->echo_enabled ? 1u : 0u);
        return true;
    }

    if (usb_key_equals(key, key_len, "CLEAR_OVERRIDES")) {
        int v = usb_parse_i32(value);
        if (v != 0) {
            usb_clear_overrides(uc);
            serial_println_str("OK:CLEAR_OVERRIDES");
            return true;
        }
        return false;
    }

    if (usb_key_equals(key, key_len, "MODE")) {
        if (usb_str_eq(value, "AUTO")) {
            usb_clear_overrides(uc);
            usb_reply_ok_key_value("MODE", "AUTO");
            return true;
        }
        if (usb_str_eq(value, "MANUAL")) {
            uc->override_active = true;
            usb_reply_ok_key_value("MODE", "MANUAL");
            return true;
        }
        return false;
    }

    if (usb_key_equals(key, key_len, "VOLTAGE")) {
        float v = usb_parse_float(value);
        if (v < VOUT_MIN || v > VOUT_MAX) {
            serial_println_str("ERR:VOLTAGE_OUT_OF_RANGE");
            return true;
        }
        uc->target_voltage_override = v;
        uc->voltage_override_active = true;
        uc->override_active = true;
        usb_reply_ok_key_float2("VOLTAGE", v);
        return true;
    }

    if (usb_key_equals(key, key_len, "RPM")) {
        uint32_t rpm = usb_parse_u32(value);
        if (rpm < RPM_TARGET_MIN || rpm > RPM_TARGET_MAX) {
            serial_println_str("ERR:RPM_OUT_OF_RANGE");
            return true;
        }
        uc->target_rpm_override = rpm;
        uc->rpm_override_active = true;
        uc->override_active = true;
        usb_reply_ok_key_uint("RPM", rpm);
        return true;
    }

    if (usb_key_equals(key, key_len, "PWM")) {
        int duty = usb_parse_i32(value);
        if (duty < 0 || duty > 255) {
            serial_println_str("ERR:PWM_OUT_OF_RANGE");
            return true;
        }
        uc->override_pwm_duty = (uint8_t)duty;
        uc->pwm_duty_overridden = true;
        uc->override_active = true;
        serial_print_str("OK:PWM=");
        serial_println_int(duty);
        return true;
    }

    if (usb_key_equals(key, key_len, "TEMP_MIN")) {
        uc->override_temp_min = usb_parse_float(value);
        uc->temp_params_overridden = true;
        usb_reply_ok_key_float1("TEMP_MIN", uc->override_temp_min);
        return true;
    }

    if (usb_key_equals(key, key_len, "TEMP_MAX")) {
        uc->override_temp_max = usb_parse_float(value);
        uc->temp_params_overridden = true;
        usb_reply_ok_key_float1("TEMP_MAX", uc->override_temp_max);
        return true;
    }

    if (usb_key_equals(key, key_len, "TEMP_OVERHEAT")) {
        uc->override_temp_overheat = usb_parse_float(value);
        uc->temp_params_overridden = true;
        usb_reply_ok_key_float1("TEMP_OVERHEAT", uc->override_temp_overheat);
        return true;
    }

    return false;
}

static void usb_handleCommand(USBController* uc, const char* cmd) {
    // 配对阶段：必须先 HELLO，再 CONNECT。
    if (usb_str_eq(cmd, "HELLO")) {
        uc->pairing_state = PAIRING_WAITING_CONFIRM;
        uc->last_heartbeat = millis();
        serial_println_str("DEVICE:ESP8266_FAN_CTRL_V1.0");
        return;
    }

    if (usb_str_eq(cmd, "CONNECT")) {
        // 允许 CONNECT 幂等：
        // - 已连接：刷新心跳并返回 OK
        // - 未连接：要求先 HELLO
        if (uc->is_connected) {
            uc->last_heartbeat = millis();
            serial_println_str("OK:CONNECTED");
            return;
        }
        if (uc->pairing_state != PAIRING_WAITING_CONFIRM) {
            serial_println_str("ERR:NEED_HELLO");
            return;
        }
        usb_set_connected(uc);
        serial_println_str("OK:CONNECTED");
        return;
    }

    if (usb_str_eq(cmd, "DISCONNECT")) {
        usb_set_disconnected(uc, false);
        serial_println_str("OK:DISCONNECTED");
        return;
    }

    // 未连接时：仅允许 HELLO / CONNECT。
    if (!uc->is_connected) {
        serial_println_str("ERR:NOT_CONNECTED");
        return;
    }

    // 连接态：任何合法命令都刷新心跳
    uc->last_heartbeat = millis();

    if (usb_str_eq(cmd, "PING")) {
        serial_println_str("PONG");
        return;
    }

    if (usb_str_eq(cmd, "RESET")) {
        uc->reset_requested = true;
        serial_println_str("OK:RESET");
        return;
    }

    if (usb_str_eq(cmd, "UNLOCK")) {
#if FEATURE_HOST_UNLOCK_OUTPUT
        uc->unlock_requested = true;
        serial_println_str("OK:UNLOCK");
#else
        serial_println_str("ERR:UNLOCK_DISABLED");
#endif
        return;
    }

    if (usb_starts_with(cmd, "GET:")) {
        const char* key = cmd + 4;
        if (!usb_handle_get(uc, key)) {
            serial_print_str("ERR:UNKNOWN_GET:");
            serial_println_str(key);
        }
        return;
    }

    if (usb_starts_with(cmd, "SET:")) {
        const char* body = cmd + 4;
        const char* equal = usb_find_char(body, '=');
        uint8_t key_len;

        if (!equal) {
            serial_print_str("ERR:UNKNOWN_SET:");
            serial_println_str(body);
            return;
        }

        key_len = (uint8_t)(equal - body);
        if (key_len == 0) {
            serial_println_str("ERR:BAD_SET_KEY");
            return;
        }

        if (!usb_handle_set(uc, body, key_len, equal + 1)) {
            serial_print_str("ERR:UNKNOWN_SET:");
            usb_print_key_segment(body, key_len);
            serial_println();
        }
        return;
    }

    serial_print_str("ERR:UNKNOWN_CMD:");
    serial_println_str(cmd);
}

void USBController_begin(USBController* uc) {
    serial_begin(USB_BAUD_RATE);

    uc->is_connected = false;
    uc->pairing_state = PAIRING_IDLE;
    uc->last_heartbeat = 0;
    uc->timeout_report_pending = false;
    uc->echo_enabled = (FEATURE_USB_ECHO != 0);
    uc->rx_len = 0;
    uc->rx_buffer[0] = '\0';

    uc->voltage_override_active = false;
    uc->override_active = false;
    uc->rpm_override_active = false;
    uc->temp_params_overridden = false;
    uc->pwm_duty_overridden = false;
    uc->reset_requested = false;
    uc->unlock_requested = false;
    uc->status_requested = false;

    uc->target_voltage_override = VOUT_DEFAULT;
    uc->target_rpm_override = RPM_TARGET_MIN;
    uc->override_temp_min = TEMP_MIN;
    uc->override_temp_max = TEMP_MAX;
    uc->override_temp_overheat = TEMP_OVERHEAT;
    uc->override_pwm_duty = 0;
}

void USBController_update(USBController* uc) {
    while (serial_available()) {
        char c = (char)serial_read();

#if FEATURE_USB_ECHO
    // 设备端回显：仅在“连接建立后”启用，避免干扰上位机 HELLO/CONNECT 严格解析。
    // 上位机也可通过 SET:ECHO=0/1 动态控制。
    if (uc->is_connected && uc->echo_enabled) {
        serial_write(c);
    }
#endif

        if (c == '\n' || c == '\r') {
            if (uc->rx_len > 0) {
                uc->rx_buffer[uc->rx_len] = '\0';
                usb_handleCommand(uc, uc->rx_buffer);
                uc->rx_len = 0;
                uc->rx_buffer[0] = '\0';
            }
        } else {
            if (uc->rx_len < USB_CMD_MAX_LEN) {
                uc->rx_buffer[uc->rx_len++] = c;
            } else {
                uc->rx_len = 0;
                uc->rx_buffer[0] = '\0';
            }
        }
    }

    // 配对超时：HELLO 后太久没 CONNECT，则回到 IDLE
    if (!uc->is_connected && uc->pairing_state == PAIRING_WAITING_CONFIRM) {
        if (millis() - uc->last_heartbeat > USB_PAIRING_TIMEOUT) {
            uc->pairing_state = PAIRING_IDLE;
        }
    }

    if (uc->is_connected && (millis() - uc->last_heartbeat > USB_HEARTBEAT_TIMEOUT)) {
        usb_set_disconnected(uc, true);
    }
}

void USBController_sendStatus(USBController* uc, const SystemStatus* status) {
    serial_print_str("{");
    serial_print_str("\"conn\":");
    serial_print_uint(uc->is_connected ? 1u : 0u);
    serial_print_str(",\"locked\":");
    serial_print_uint(status->output_locked ? 1u : 0u);
    serial_print_str(",\"manual\":");
    serial_print_uint(uc->override_active ? 1u : 0u);
    serial_print_str(",\"ov_pwm\":");
    serial_print_uint(uc->pwm_duty_overridden ? 1u : 0u);
    serial_print_str(",\"ov_v\":");
    serial_print_uint(uc->voltage_override_active ? 1u : 0u);
    serial_print_str(",\"ov_rpm\":");
    serial_print_uint(uc->rpm_override_active ? 1u : 0u);
    serial_print_str(",\"echo\":");
    serial_print_uint(uc->echo_enabled ? 1u : 0u);
    serial_print_str(",\"temp\":");
    serial_print_float(status->temperature, 2);
    serial_print_str(",\"volt\":");
    serial_print_float(status->voltage, 2);
    serial_print_str(",\"target\":");
    serial_print_float(status->target_voltage, 2);
    serial_print_str(",\"rpm\":");
    serial_print_uint(status->rpm);
    serial_print_str(",\"target_rpm\":");
    serial_print_uint(status->target_rpm);
    serial_print_str(",\"pwm\":");
    serial_print_uint(status->pwm_duty);
    serial_print_str(",\"error\":\"0x");
    serial_print_uint_base(status->error_flags, HEX);
    serial_print_str("\",\"mode\":\"");
    serial_print_str(status->auto_mode ? "AUTO" : "MANUAL");
    serial_println_str("\"}");
}

bool USBController_isConnected(const USBController* uc) {
    return uc->is_connected;
}

float USBController_getTargetVoltage(const USBController* uc) {
    return uc->target_voltage_override;
}

bool USBController_isOverrideActive(const USBController* uc) {
    return uc->override_active;
}

#else

void USBController_begin(USBController* uc) {
    serial_begin(USB_BAUD_RATE);
    uc->is_connected = false;
    uc->pairing_state = PAIRING_IDLE;
    uc->last_heartbeat = 0;
    uc->rx_len = 0;
    uc->rx_buffer[0] = '\0';

    uc->target_voltage_override = VOUT_DEFAULT;
    uc->target_rpm_override = RPM_TARGET_MIN;
    uc->override_temp_min = TEMP_MIN;
    uc->override_temp_max = TEMP_MAX;
    uc->override_temp_overheat = TEMP_OVERHEAT;
    uc->override_pwm_duty = 0;

    uc->override_active = false;
    uc->rpm_override_active = false;
    uc->temp_params_overridden = false;
    uc->pwm_duty_overridden = false;
    uc->reset_requested = false;
    uc->status_requested = false;
}

void USBController_update(USBController* uc) {
    (void)uc;
}

void USBController_sendStatus(USBController* uc, const SystemStatus* status) {
    (void)uc;
    (void)status;
}

bool USBController_isConnected(const USBController* uc) {
    (void)uc;
    return false;
}

float USBController_getTargetVoltage(const USBController* uc) {
    (void)uc;
    return VOUT_DEFAULT;
}

bool USBController_isOverrideActive(const USBController* uc) {
    (void)uc;
    return false;
}

#endif
