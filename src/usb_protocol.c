/**
 * @file usb_protocol.cpp
 * @brief USB通信协议模块实现（C风格）
 */

#include "usb_protocol.h"
#include "serial_compat.h"

#if FEATURE_USB_PROTOCOL

#ifdef __SDCC
#define SDCC_REENTRANT __reentrant
#else
#define SDCC_REENTRANT
#endif

static bool usb_str_eq(const char* a, const char* b) SDCC_REENTRANT {
    while (*a && *b) {
        if (*a != *b) {
            return false;
        }
        a++;
        b++;
    }
    return (*a == '\0') && (*b == '\0');
}

static bool usb_starts_with(const char* s, const char* prefix) SDCC_REENTRANT {
    while (*prefix) {
        if (*s != *prefix) {
            return false;
        }
        s++;
        prefix++;
    }
    return true;
}

static const char* usb_find_char(const char* s, char c) SDCC_REENTRANT {
    while (*s) {
        if (*s == c) {
            return s;
        }
        s++;
    }
    return (const char*)0;
}

static uint32_t usb_parse_u32(const char* s) SDCC_REENTRANT {
    uint32_t v = 0;
    while (*s >= '0' && *s <= '9') {
        v = v * 10u + (uint32_t)(*s - '0');
        s++;
    }
    return v;
}

static int usb_parse_i32(const char* s) SDCC_REENTRANT {
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

static float usb_parse_float(const char* s) SDCC_REENTRANT {
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

static bool usb_key_equals(const char* key, uint8_t key_len, const char* literal) SDCC_REENTRANT {
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

static bool usb_handle_get(USBController* uc, const char* key) SDCC_REENTRANT {
    if (usb_str_eq(key, "STATUS")) {
        uc->status_requested = true;
        return true;
    }
    return false;
}

static bool usb_handle_set(USBController* uc, const char* key, uint8_t key_len, const char* value) SDCC_REENTRANT {
    if (usb_key_equals(key, key_len, "MODE")) {
        if (usb_str_eq(value, "AUTO")) {
            uc->override_active = false;
            uc->rpm_override_active = false;
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
    if (usb_str_eq(cmd, "HELLO")) {
        usb_set_connected(uc);
        serial_println_str("DEVICE:CH552G_FAN_CTRL_V1.0");
        return;
    }

    if (usb_str_eq(cmd, "CONNECT")) {
        usb_set_connected(uc);
        serial_println_str("OK:CONNECTED");
        return;
    }

    usb_set_connected(uc);

    if (usb_str_eq(cmd, "PING")) {
        serial_println_str("PONG");
        return;
    }

    if (usb_str_eq(cmd, "RESET")) {
        uc->reset_requested = true;
        serial_println_str("OK:RESET");
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
    uc->rx_len = 0;
    uc->rx_buffer[0] = '\0';

    uc->override_active = false;
    uc->rpm_override_active = false;
    uc->temp_params_overridden = false;
    uc->pwm_duty_overridden = false;
    uc->reset_requested = false;
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

    if (uc->is_connected && (millis() - uc->last_heartbeat > USB_HEARTBEAT_TIMEOUT)) {
        uc->is_connected = false;
        uc->pairing_state = PAIRING_IDLE;
        uc->override_active = false;
        uc->rpm_override_active = false;
    }
}

void USBController_sendStatus(USBController* uc, const SystemStatus* status) {
    (void)uc;

    serial_print_str("{");
    serial_print_str("\"temp\":");
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
