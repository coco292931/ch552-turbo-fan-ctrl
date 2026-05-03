/**
 * @file voltage_control.cpp
 * @brief 电压控制模块实现
 */

#include "voltage_control.h"

// 用户实测标定点（反相链路）：PWM 越大，输出电压越低
// 点位来源：5->12.17, 6->12.17, 7->11.59, 8->9.89, 9->8.89, 10->7.00, 11->4.90
static const uint8_t k_pwm_calib_duty[] = {5u, 6u, 7u, 8u, 9u, 10u, 11u};
static const float k_pwm_calib_voltage[] = {12.17f, 12.17f, 11.59f, 9.89f, 8.89f, 7.00f, 4.90f};
// 同一组点对应的实测 RPM。用于温控自动模式和 RPM 覆盖模式。
static const uint32_t k_pwm_calib_rpm[] = {2979u, 2979u, 2861u, 2536u, 2330u, 1888u, 660u};
static const uint8_t k_pwm_calib_count = (uint8_t)(sizeof(k_pwm_calib_duty) / sizeof(k_pwm_calib_duty[0]));

static float vc_lerp(float x0, float y0, float x1, float y1, float x) {
    if (x1 <= x0) {
        return y0;
    }
    return y0 + (y1 - y0) * ((x - x0) / (x1 - x0));
}

static void vc_set_mode(VoltageController* vc, VoltageControlMode mode) {
    if (vc->control_mode != mode) {
        vc->control_mode = mode;
        vc->duty_dither_accum = 0.0f;
    }
}

static uint8_t vc_quantize_with_dither(VoltageController* vc, float duty_float) {
    uint8_t duty;
    uint8_t base;
    float frac;

    if (duty_float <= 0.0f) {
        return 0u;
    }
    if (duty_float >= (float)PWM_RESOLUTION) {
        return PWM_RESOLUTION;
    }

    base = (uint8_t)duty_float;
    frac = duty_float - (float)base;
    vc->duty_dither_accum += frac;

    duty = base;
    if (vc->duty_dither_accum >= 1.0f) {
        if (duty < PWM_RESOLUTION) {
            duty++;
        }
        vc->duty_dither_accum -= 1.0f;
    }
    return duty;
}

static float VoltageController_rpmToPWM(float rpm) {
    uint8_t i;
    float pwm_float;
    float rpm_hi;
    float rpm_lo;
    float d_hi;
    float d_lo;

    if (rpm <= 0.0f) {
        return PWM_RESOLUTION; // 0RPM 代表停机：反相链路下输出关闭
    }

    if (rpm >= (float)k_pwm_calib_rpm[0]) {
        pwm_float = (float)k_pwm_calib_duty[0];
    } else if (rpm <= (float)k_pwm_calib_rpm[k_pwm_calib_count - 1u]) {
        pwm_float = (float)k_pwm_calib_duty[k_pwm_calib_count - 1u];
    } else {
        pwm_float = (float)k_pwm_calib_duty[k_pwm_calib_count - 1u];
        for (i = 0; i + 1u < k_pwm_calib_count; i++) {
            rpm_hi = (float)k_pwm_calib_rpm[i];
            rpm_lo = (float)k_pwm_calib_rpm[i + 1u];
            if (rpm <= rpm_hi && rpm >= rpm_lo) {
                d_hi = (float)k_pwm_calib_duty[i];
                d_lo = (float)k_pwm_calib_duty[i + 1u];
                pwm_float = vc_lerp(rpm_hi, d_hi, rpm_lo, d_lo, rpm);
                break;
            }
        }
    }

    if (pwm_float < 0.0f) pwm_float = 0.0f;
    if (pwm_float > (float)PWM_RESOLUTION) pwm_float = (float)PWM_RESOLUTION;
    return pwm_float;
}

static uint8_t VoltageController_voltageToPWM(float voltage) {
    uint8_t i;
    float pwm_float;
    float v_hi;
    float v_lo;
    float d_hi;
    float d_lo;

    if (voltage < VOUT_MIN) voltage = VOUT_MIN;
    if (voltage > VOUT_MAX) voltage = VOUT_MAX;

    // 高电压端钳位（小 duty）
    if (voltage >= k_pwm_calib_voltage[0]) {
        pwm_float = (float)k_pwm_calib_duty[0];
    } else if (voltage <= k_pwm_calib_voltage[k_pwm_calib_count - 1u]) {
        // 低电压端钳位（大 duty）
        pwm_float = (float)k_pwm_calib_duty[k_pwm_calib_count - 1u];
    } else {
        pwm_float = (float)k_pwm_calib_duty[k_pwm_calib_count - 1u];
        for (i = 0; i + 1u < k_pwm_calib_count; i++) {
            v_hi = k_pwm_calib_voltage[i];
            v_lo = k_pwm_calib_voltage[i + 1u];
            if (voltage <= v_hi && voltage >= v_lo) {
                d_hi = (float)k_pwm_calib_duty[i];
                d_lo = (float)k_pwm_calib_duty[i + 1u];
                // 注意这里 x 轴是电压，且随着点位递增是递减序列
                pwm_float = vc_lerp(v_hi, d_hi, v_lo, d_lo, voltage);
                break;
            }
        }
    }
    
    if (pwm_float < 0.0f) pwm_float = 0.0f;
    if (pwm_float > (float)PWM_RESOLUTION) pwm_float = (float)PWM_RESOLUTION;
    return (uint8_t)(pwm_float + 0.5f);
}

static float VoltageController_voltageToPWMFloat(float voltage) {
    uint8_t i;
    float pwm_float;
    float v_hi;
    float v_lo;
    float d_hi;
    float d_lo;

    if (voltage < VOUT_MIN) voltage = VOUT_MIN;
    if (voltage > VOUT_MAX) voltage = VOUT_MAX;

    // 高电压端钳位（小 duty）
    if (voltage >= k_pwm_calib_voltage[0]) {
        pwm_float = (float)k_pwm_calib_duty[0];
    } else if (voltage <= k_pwm_calib_voltage[k_pwm_calib_count - 1u]) {
        // 低电压端钳位（大 duty）
        pwm_float = (float)k_pwm_calib_duty[k_pwm_calib_count - 1u];
    } else {
        pwm_float = (float)k_pwm_calib_duty[k_pwm_calib_count - 1u];
        for (i = 0; i + 1u < k_pwm_calib_count; i++) {
            v_hi = k_pwm_calib_voltage[i];
            v_lo = k_pwm_calib_voltage[i + 1u];
            if (voltage <= v_hi && voltage >= v_lo) {
                d_hi = (float)k_pwm_calib_duty[i];
                d_lo = (float)k_pwm_calib_duty[i + 1u];
                pwm_float = vc_lerp(v_hi, d_hi, v_lo, d_lo, voltage);
                break;
            }
        }
    }
    
    if (pwm_float < 0.0f) pwm_float = 0.0f;
    if (pwm_float > (float)PWM_RESOLUTION) pwm_float = (float)PWM_RESOLUTION;
    return pwm_float;
}

float VoltageController_pwmToVoltage(uint8_t duty) {
    uint8_t i;
    float voltage;

    // 反相 fallback：255 表示明确关断输出。
    if (duty >= PWM_RESOLUTION) {
        return 0.0f;
    }

    if (duty <= k_pwm_calib_duty[0]) {
        voltage = k_pwm_calib_voltage[0];
    } else if (duty >= k_pwm_calib_duty[k_pwm_calib_count - 1u]) {
        voltage = k_pwm_calib_voltage[k_pwm_calib_count - 1u];
    } else {
        voltage = k_pwm_calib_voltage[k_pwm_calib_count - 1u];
        for (i = 0; i + 1u < k_pwm_calib_count; i++) {
            if (duty >= k_pwm_calib_duty[i] && duty <= k_pwm_calib_duty[i + 1u]) {
                voltage = vc_lerp((float)k_pwm_calib_duty[i], k_pwm_calib_voltage[i],
                                  (float)k_pwm_calib_duty[i + 1u], k_pwm_calib_voltage[i + 1u],
                                  (float)duty);
                break;
            }
        }
    }

    if (voltage < VOUT_MIN) voltage = VOUT_MIN;
    if (voltage > VOUT_MAX) voltage = VOUT_MAX;
    return voltage;
}

void VoltageController_begin(VoltageController* vc, uint8_t pwm_out, uint8_t adc_in) {
    vc->pwm_pin = pwm_out;
    vc->adc_pin = adc_in;
    
    // 配置PWM引脚为输出
    pinMode(vc->pwm_pin, OUTPUT);
    
    // 默认输出0% PWM = 12V (Fail-Safe)
    analogWrite(vc->pwm_pin, 0);
    vc->current_pwm_duty = 0;
    vc->target_voltage = VOUT_DEFAULT;
    vc->is_locked = false;
    vc->control_mode = VC_CONTROL_VOLTAGE;
    vc->duty_dither_accum = 0.0f;
    vc->target_rpm = 0u;
    vc->rpm_i_term = 0.0f;

    vc->begin_ms = millis();
    vc->last_output_change_ms = vc->begin_ms;
    vc->abnormal_count = 0;
    
    // 配置ADC引脚为高阻输入，避免数字输出级影响模拟采样。
    pinMode(vc->adc_pin, INPUT);
    
    // 初始读取电压
    delay(100);
    vc->current_voltage = VoltageController_readVoltage(vc);
}

void VoltageController_setVoltage(VoltageController* vc, float voltage) {
    uint8_t new_duty;

    if (vc->is_locked) {
        return;
    }

    if (voltage < VOUT_MIN) voltage = VOUT_MIN;
    if (voltage > VOUT_MAX) voltage = VOUT_MAX;
    vc_set_mode(vc, VC_CONTROL_VOLTAGE);
    vc->target_voltage = voltage;
    
    // 使用分辨率插值（dithering）以保留精度
    new_duty = vc_quantize_with_dither(vc, VoltageController_voltageToPWMFloat(vc->target_voltage));
    
    if (new_duty != vc->current_pwm_duty) {
        vc->current_pwm_duty = new_duty;
        analogWrite(vc->pwm_pin, vc->current_pwm_duty);
        vc->last_output_change_ms = millis();
        vc->abnormal_count = 0;
    }
}

void VoltageController_setPWMDuty(VoltageController* vc, uint8_t duty) {
    if (vc->is_locked) {
        return;
    }

    if (duty > PWM_RESOLUTION) {
        duty = PWM_RESOLUTION;
    }

    vc_set_mode(vc, VC_CONTROL_PWM);

    if (duty >= PWM_RESOLUTION) {
        // 明确关断输出：不再映射到 VOUT_MIN，目标电压保持 0V。
        if (vc->current_pwm_duty != PWM_RESOLUTION) {
            vc->current_pwm_duty = PWM_RESOLUTION;
            analogWrite(vc->pwm_pin, vc->current_pwm_duty);
            vc->last_output_change_ms = millis();
            vc->abnormal_count = 0;
        }
        vc->target_voltage = 0.0f;
        return;
    }

    // 反相 fallback 下，PWM_RESOLUTION 表示“明确关断输出”，必须允许。
    // 除了关断态外，其余手动输入允许到校准表的最后一点（duty=11）
    if (duty < PWM_RESOLUTION) {
        // 使用校准表最后一点作为上限（duty=11 对应最低电压 4.90V）
        uint8_t safe_max_duty = k_pwm_calib_duty[k_pwm_calib_count - 1u];
        if (duty > safe_max_duty) {
            duty = safe_max_duty;
        }
    }

    if (duty != vc->current_pwm_duty) {
        vc->current_pwm_duty = duty;
        analogWrite(vc->pwm_pin, vc->current_pwm_duty);
        vc->last_output_change_ms = millis();
        vc->abnormal_count = 0;
    }
    vc->target_voltage = VoltageController_pwmToVoltage(vc->current_pwm_duty);
}

void VoltageController_setTargetRPM(VoltageController* vc, uint32_t rpm) {
    uint8_t duty;

    if (vc->is_locked) {
        return;
    }

    vc_set_mode(vc, VC_CONTROL_RPM);
    vc->target_rpm = rpm;

    duty = vc_quantize_with_dither(vc, VoltageController_rpmToPWM((float)rpm));

    if (duty >= PWM_RESOLUTION) {
        if (vc->current_pwm_duty != PWM_RESOLUTION) {
            vc->current_pwm_duty = PWM_RESOLUTION;
            analogWrite(vc->pwm_pin, vc->current_pwm_duty);
            vc->last_output_change_ms = millis();
            vc->abnormal_count = 0;
        }
        vc->target_voltage = 0.0f;
        return;
    }

    if (duty != vc->current_pwm_duty) {
        vc->current_pwm_duty = duty;
        analogWrite(vc->pwm_pin, vc->current_pwm_duty);
        vc->last_output_change_ms = millis();
        vc->abnormal_count = 0;
    }
    vc->target_voltage = VoltageController_pwmToVoltage(vc->current_pwm_duty);
}

float VoltageController_readVoltage(VoltageController* vc) {
    int adc_value;
    float output_voltage;

    pinMode(vc->adc_pin, INPUT);
    delayMicroseconds(8);
    (void)analogRead(vc->adc_pin);
    adc_value = analogRead(vc->adc_pin);

    if (adc_value < 0) {
        return vc->current_voltage;
    }

    output_voltage = (float)adc_value * ADC_TO_VOLTAGE_COEFF;
    return output_voltage;
}

float VoltageController_updateVoltage(VoltageController* vc) {
    vc->current_voltage = VoltageController_readVoltage(vc);
    return vc->current_voltage;
}

bool VoltageController_isVoltageAbnormal(VoltageController* vc) {
    if (vc->is_locked) {
        return false;
    }

    unsigned long now = millis();
    if (now - vc->begin_ms < (unsigned long)VOLTAGE_MONITOR_STARTUP_GRACE_MS) {
        return false;
    }

    // 刚改变PWM/目标电压时，允许输出与ADC有瞬态
    if (now - vc->last_output_change_ms < (unsigned long)VOLTAGE_ABNORMAL_SETTLE_MS) {
        return false;
    }

    // 仅基于“已采样的 current_voltage”做判定，避免主循环内重复采样引入抖动
    if (vc->current_voltage < (vc->target_voltage - (float)VOLTAGE_ABNORMAL_DROP_V)) {
        if (vc->abnormal_count < 255) {
            vc->abnormal_count++;
        }
    } else {
        vc->abnormal_count = 0;
    }

    return (vc->abnormal_count >= (uint8_t)VOLTAGE_ABNORMAL_CONSECUTIVE);
}

void VoltageController_lockOutput(VoltageController* vc) {
    vc->is_locked = true;
    vc->current_pwm_duty = PWM_RESOLUTION;
    analogWrite(vc->pwm_pin, vc->current_pwm_duty);

    vc->last_output_change_ms = millis();
    vc->abnormal_count = 0;
}

void VoltageController_unlockOutput(VoltageController* vc) {
    vc->is_locked = false;
    vc->last_output_change_ms = millis();
    vc->abnormal_count = 0;
}

float VoltageController_getTargetVoltage(const VoltageController* vc) {
    return vc->target_voltage;
}

float VoltageController_getCurrentVoltage(const VoltageController* vc) {
    return vc->current_voltage;
}

uint8_t VoltageController_getPWMDuty(const VoltageController* vc) {
    return vc->current_pwm_duty;
}

bool VoltageController_isLocked(const VoltageController* vc) {
    return vc->is_locked;
}

VoltageControlMode VoltageController_getControlMode(const VoltageController* vc) {
    return vc->control_mode;
}
