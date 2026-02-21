/**
 * @file fan_monitor.cpp
 * @brief 风扇转速监控模块实现
 */

#include "fan_monitor.h"

// 静态成员初始化
FanMonitor* FanMonitor::instance = nullptr;

void FanMonitor::begin(uint8_t pin) {
    tach_pin = pin;
    pulse_count = 0;
    last_rpm = 0;
    last_calc_time = millis();
    stall_count = 0;
    is_stalled = false;
    
    // 配置引脚为输入（内部上拉）
    pinMode(tach_pin, INPUT_PULLUP);
    
    // 注册中断（下降沿触发）
    instance = this;
    attachInterrupt(digitalPinToInterrupt(tach_pin), tachISR, FALLING);
}

void FanMonitor::tachISR() {
    if (instance != nullptr) {
        instance->pulse_count++;
    }
}

uint32_t FanMonitor::updateRPM() {
    unsigned long now = millis();
    unsigned long elapsed = now - last_calc_time;
    
    // 每1秒计算一次
    if (elapsed >= 1000) {
        // 临时保存脉冲数并清零（避免中断冲突）
        noInterrupts();
        uint32_t pulses = pulse_count;
        pulse_count = 0;
        interrupts();
        
        // 计算RPM
        // 3Pin风扇：每转2个脉冲
        // RPM = (脉冲数 / 2) * (60 / elapsed_sec)
        last_rpm = (pulses * 60000) / (elapsed * 2);
        
        last_calc_time = now;
        
        // 堵转检测
        if (last_rpm < RPM_STALL_THRESH) {
            stall_count++;
            if (stall_count >= 2) {  // 连续2次检测到堵转
                is_stalled = true;
            }
        } else {
            stall_count = 0;
            is_stalled = false;
        }
    }
    
    return last_rpm;
}

void FanMonitor::resetStall() {
    is_stalled = false;
    stall_count = 0;
}
