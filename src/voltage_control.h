/**
 * @file voltage_control.h
 * @brief 电压控制模块 - PWM输出与ADC电压检测
 */

#ifndef VOLTAGE_CONTROL_H
#define VOLTAGE_CONTROL_H

#include "arduino_compat.h"
#include "config.h"

typedef enum {
    VC_CONTROL_VOLTAGE = 0,
    VC_CONTROL_PWM = 1,
    VC_CONTROL_RPM = 2
} VoltageControlMode;

typedef struct {
    uint8_t pwm_pin;
    uint8_t adc_pin;
    float target_voltage;
    float current_voltage;
    uint8_t current_pwm_duty;
    bool is_locked;
    VoltageControlMode control_mode;
    float duty_dither_accum;

    // RPM 反馈控制（闭环）
    uint32_t target_rpm;
    float rpm_i_term;

    // 保护/去抖状态
    unsigned long begin_ms;
    unsigned long last_output_change_ms;
    uint8_t abnormal_count;
} VoltageController;

void VoltageController_begin(VoltageController* vc, uint8_t pwm_out, uint8_t adc_in);
void VoltageController_setVoltage(VoltageController* vc, float voltage);
void VoltageController_setPWMDuty(VoltageController* vc, uint8_t duty);
void VoltageController_setTargetRPM(VoltageController* vc, uint32_t rpm);
float VoltageController_readVoltage(VoltageController* vc);
float VoltageController_updateVoltage(VoltageController* vc);
float VoltageController_getTargetVoltage(const VoltageController* vc);
float VoltageController_getCurrentVoltage(const VoltageController* vc);
uint8_t VoltageController_getPWMDuty(const VoltageController* vc);
bool VoltageController_isVoltageAbnormal(VoltageController* vc);
void VoltageController_lockOutput(VoltageController* vc);
void VoltageController_unlockOutput(VoltageController* vc);
bool VoltageController_isLocked(const VoltageController* vc);
VoltageControlMode VoltageController_getControlMode(const VoltageController* vc);
float VoltageController_pwmToVoltage(uint8_t duty);

#endif // VOLTAGE_CONTROL_H
