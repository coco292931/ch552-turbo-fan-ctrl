/**
 * @file voltage_control.cpp
 * @brief 电压控制模块实现
 */

#include "voltage_control.h"

void VoltageController::begin(uint8_t pwm_out, uint8_t adc_in) {
    pwm_pin = pwm_out;
    adc_pin = adc_in;
    
    // 配置PWM引脚为输出
    pinMode(pwm_pin, OUTPUT);
    
    // 默认输出0% PWM = 12V (Fail-Safe)
    analogWrite(pwm_pin, 0);
    current_pwm_duty = 0;
    target_voltage = VOUT_DEFAULT;
    is_locked = false;  // 初始化锁定标志
    
    // 配置ADC引脚
    pinMode(adc_pin, INPUT);
    
    // 初始读取电压
    delay(100);
    current_voltage = readVoltage();
}

uint8_t VoltageController::voltageToPWM(float voltage) {
    // 限制电压范围
    voltage = constrain(voltage, VOUT_MIN, VOUT_MAX);
    
    // 线性映射（需要实测校准）
    // 假设: 12V -> PWM=0, 5V -> PWM=255
    // PWM = (12 - V) / 7 * 255
    
    float pwm_float = (VOUT_MAX - voltage) / (VOUT_MAX - VOUT_MIN) * PWM_RESOLUTION;
    
    // 可选：使用校准系数
    // pwm_float = PWM_CALIB_K1 * voltage + PWM_CALIB_B1;
    
    return (uint8_t)constrain(pwm_float, 0, PWM_RESOLUTION);
}

void VoltageController::setVoltage(float voltage) {
    // 如果已锁定，拒绝设置
    if (is_locked) {
        return;
    }
    
    target_voltage = constrain(voltage, VOUT_MIN, VOUT_MAX);
    current_pwm_duty = voltageToPWM(target_voltage);
    analogWrite(pwm_pin, current_pwm_duty);
}

float VoltageController::readVoltage() {
    // 读取ADC值 (0-1023)
    int adc_value = analogRead(adc_pin);
    
    // 转换为实际电压
    // ADC电压 = (adc_value / 1023) * Vref
    // 实际输出 = ADC电压 * 分压比
    float adc_voltage = (float)adc_value / (ADC_RESOLUTION - 1) * ADC_REF_VOLTAGE;
    float output_voltage = adc_voltage * ADC_VOLTAGE_RATIO;
    
    return output_voltage;
}

float VoltageController::updateVoltage() {
    current_voltage = readVoltage();
    return current_voltage;
}

bool VoltageController::isVoltageAbnormal() {
    // 更新电压读数
    updateVoltage();
    
    // 判断：实际电压远低于目标电压 -> 短路/过载
    if (current_voltage < target_voltage - 1.0f) {
        return true;
    }
    
    return false;
}

void VoltageController::lockOutput() {
    is_locked = true;
    // 设置PWM=100% (降低输出)
    current_pwm_duty = PWM_RESOLUTION;
    analogWrite(pwm_pin, current_pwm_duty);
}

void VoltageController::unlockOutput() {
    is_locked = false;
}
