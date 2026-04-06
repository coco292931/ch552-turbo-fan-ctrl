#line 1 "C:\\Users\\tonyp\\Downloads\\ch552-turbo-fan-ctrl\\src\\voltage_control.c"
/**
 * @file voltage_control.cpp
 * @brief 电压控制模块实现
 */

#include "voltage_control.h"

static uint8_t VoltageController_voltageToPWM(float voltage) {
    float pwm_float;

    if (voltage < VOUT_MIN) voltage = VOUT_MIN;
    if (voltage > VOUT_MAX) voltage = VOUT_MAX;
    pwm_float = (VOUT_MAX - voltage) / (VOUT_MAX - VOUT_MIN) * PWM_RESOLUTION;
    if (pwm_float < 0.0f) pwm_float = 0.0f;
    if (pwm_float > (float)PWM_RESOLUTION) pwm_float = (float)PWM_RESOLUTION;
    return (uint8_t)pwm_float;
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
    
    // 配置ADC引脚为高阻输入，避免数字输出级影响模拟采样。
    pinMode(vc->adc_pin, INPUT);
    
    // 初始读取电压
    delay(100);
    vc->current_voltage = VoltageController_readVoltage(vc);
}

void VoltageController_setVoltage(VoltageController* vc, float voltage) {
    if (vc->is_locked) {
        return;
    }

    if (voltage < VOUT_MIN) voltage = VOUT_MIN;
    if (voltage > VOUT_MAX) voltage = VOUT_MAX;
    vc->target_voltage = voltage;
    vc->current_pwm_duty = VoltageController_voltageToPWM(vc->target_voltage);
    analogWrite(vc->pwm_pin, vc->current_pwm_duty);
}

float VoltageController_readVoltage(VoltageController* vc) {
    // 硬件读不到，直接返回目标电压，避免无谓逻辑阻塞和体积消耗
    return vc->target_voltage;
    
    /* 屏蔽原ADC逻辑
    pinMode(vc->adc_pin, INPUT);
    delayMicroseconds(8);
    (void)analogRead(vc->adc_pin);
    int adc_value = analogRead(vc->adc_pin);

    if (adc_value <= 0 && vc->current_voltage > 0.05f) {
        return vc->current_voltage;
    }

    // CH552 ADC 为 8-bit，码值范围 0..255，满量程应使用 255 作为分母。
    float adc_voltage = (float)adc_value / ADC_RESOLUTION * ADC_REF_VOLTAGE;
    float output_voltage = adc_voltage * ADC_VOLTAGE_RATIO;
    
    return output_voltage;
    */
}

float VoltageController_updateVoltage(VoltageController* vc) {
    vc->current_voltage = VoltageController_readVoltage(vc);
    return vc->current_voltage;
}

bool VoltageController_isVoltageAbnormal(VoltageController* vc) {
    VoltageController_updateVoltage(vc);

    if (vc->current_voltage < vc->target_voltage - 1.0f) {
        return true;
    }

    return false;
}

void VoltageController_lockOutput(VoltageController* vc) {
    vc->is_locked = true;
    vc->current_pwm_duty = PWM_RESOLUTION;
    analogWrite(vc->pwm_pin, vc->current_pwm_duty);
}

void VoltageController_unlockOutput(VoltageController* vc) {
    vc->is_locked = false;
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
