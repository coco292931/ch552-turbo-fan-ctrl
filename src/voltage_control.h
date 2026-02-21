/**
 * @file voltage_control.h
 * @brief 电压控制模块 - PWM输出与ADC电压检测
 */

#ifndef VOLTAGE_CONTROL_H
#define VOLTAGE_CONTROL_H

#include <Arduino.h>
#include "config.h"

/**
 * @class VoltageController
 * @brief 电压控制器类
 * 
 * 功能：
 * 1. 通过PWM注入XL4015的FB节点实现电压调节
 * 2. 通过ADC检测实际输出电压
 * 3. 实现Fail-Safe机制（默认12V）
 */
class VoltageController {
private:
    uint8_t pwm_pin;           // PWM输出引脚
    uint8_t adc_pin;           // ADC检测引脚
    float target_voltage;      // 目标电压
    float current_voltage;     // 当前电压
    uint8_t current_pwm_duty;  // 当前PWM占空比
    
    /**
     * @brief 电压到PWM占空比的映射
     * @param voltage 目标电压(V)
     * @return PWM占空比 (0-255)
     * 
     * 原理：
     * - PWM = 0%   → FB电流=0 → Vout = 12V (硬件默认)
     * - PWM增大 → FB电压升高 → Vout降低
     * - PWM = 100% → Vout = ~5V
     * 
     * 映射关系需要实测校准！
     */
    uint8_t voltageToPWM(float voltage);
    
public:
    /**
     * @brief 初始化电压控制器
     * @param pwm_out PWM输出引脚
     * @param adc_in ADC检测引脚
     */
    void begin(uint8_t pwm_out, uint8_t adc_in);
    
    /**
     * @brief 设置目标电压
     * @param voltage 目标电压(V)，自动限制在VOUT_MIN~VOUT_MAX范围
     */
    void setVoltage(float voltage);
    
    /**
     * @brief 读取当前输出电压
     * @return 输出电压(V)
     * 
     * 通过ADC采样分压后的电压计算实际输出
     * 分压比: (10kΩ + 5.1kΩ) / 5.1kΩ = 2.96
     */
    float readVoltage();
    
    /**
     * @brief 更新电压读数（定期调用）
     * @return 当前电压(V)
     */
    float updateVoltage();
    
    /**
     * @brief 获取当前目标电压
     */
    float getTargetVoltage() const { return target_voltage; }
    
    /**
     * @brief 获取当前电压
     */
    float getCurrentVoltage() const { return current_voltage; }
    
    /**
     * @brief 获取当前PWM占空比
     */
    uint8_t getPWMDuty() const { return current_pwm_duty; }
    
    /**
     * @brief 检测电压异常（短路/过载）
     * @return true=异常，false=正常
     * 
     * 判断条件：实际电压 < 目标电压 - 1V
     */
    bool isVoltageAbnormal();
    
    /**
     * @brief 锁定输出（异常状态）
     * 锁定后只能通过重启或复位命令解除
     */
    void lockOutput();
    
    /**
     * @brief 解除锁定
     */
    void unlockOutput();
    
    /**
     * @brief 检查是否已锁定
     */
    bool isLocked() const { return is_locked; }
    
private:
    bool is_locked;  // 锁定标志
};

#endif // VOLTAGE_CONTROL_H
