#line 1 "C:\\Users\\tonyp\\Downloads\\ch552-turbo-fan-ctrl\\src\\voltage_control.h"
/**
 * @file voltage_control.h
 * @brief 电压控制模块 - PWM输出与ADC电压检测
 */

#ifndef VOLTAGE_CONTROL_H
#define VOLTAGE_CONTROL_H

#include "arduino_compat.h"
#include "config.h"

typedef struct {
    uint8_t pwm_pin;
    uint8_t adc_pin;
    float target_voltage;
    float current_voltage;
    uint8_t current_pwm_duty;
    bool is_locked;
} VoltageController;

void VoltageController_begin(VoltageController* vc, uint8_t pwm_out, uint8_t adc_in);
void VoltageController_setVoltage(VoltageController* vc, float voltage);
float VoltageController_readVoltage(VoltageController* vc);
float VoltageController_updateVoltage(VoltageController* vc);
float VoltageController_getTargetVoltage(const VoltageController* vc);
float VoltageController_getCurrentVoltage(const VoltageController* vc);
uint8_t VoltageController_getPWMDuty(const VoltageController* vc);
bool VoltageController_isVoltageAbnormal(VoltageController* vc);
void VoltageController_lockOutput(VoltageController* vc);
void VoltageController_unlockOutput(VoltageController* vc);
bool VoltageController_isLocked(const VoltageController* vc);

#endif // VOLTAGE_CONTROL_H
