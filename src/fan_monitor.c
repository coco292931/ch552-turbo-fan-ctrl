/**
 * @file fan_monitor.cpp
 * @brief 风扇转速监控模块实现
 */

#include "arduino_compat.h"
#include "fan_monitor.h"

static FanMonitor* g_fan_monitor_instance = 0;

static void fan_monitor_tachISR(void) {
    if (g_fan_monitor_instance != 0) {
        g_fan_monitor_instance->pulse_count++;
    }
}

void FanMonitor_begin(FanMonitor* fm, uint8_t pin) {
    fm->tach_pin = pin;
    fm->pulse_count = 0;
    fm->last_rpm = 0;
    fm->last_calc_time = millis();
    fm->stall_count = 0;
    fm->is_stalled = false;
    
    // 配置引脚为输入（内部上拉）
    pinMode(fm->tach_pin, INPUT_PULLUP);
    
    // 注册中断（下降沿触发）
    g_fan_monitor_instance = fm;
    // CH55xDuino core uses raw external interrupt index (INT0 = 0).
    attachInterrupt(0, fan_monitor_tachISR, FALLING);
}

uint32_t FanMonitor_updateRPM(FanMonitor* fm) {
    unsigned long now = millis();
    unsigned long elapsed = now - fm->last_calc_time;
    
    // 每1秒计算一次
    if (elapsed >= 1000) {
        uint32_t pulses = fm->pulse_count;
        fm->pulse_count = 0;
        
        // 计算RPM
        // 3Pin风扇：每转2个脉冲
        // RPM = (脉冲数 / 2) * (60 / elapsed_sec)
        fm->last_rpm = (pulses * 60000) / (elapsed * 2);
        fm->last_calc_time = now;
        
        // 堵转检测
        if (fm->last_rpm < RPM_STALL_THRESH) {
            fm->stall_count++;
            if (fm->stall_count >= 2) {
                fm->is_stalled = true;
            }
        } else {
            fm->stall_count = 0;
            fm->is_stalled = false;
        }
    }

    return fm->last_rpm;
}

uint32_t FanMonitor_getRPM(const FanMonitor* fm) {
    return fm->last_rpm;
}

bool FanMonitor_isStalled(const FanMonitor* fm) {
    return fm->is_stalled;
}

void FanMonitor_resetStall(FanMonitor* fm) {
    fm->is_stalled = false;
    fm->stall_count = 0;
}

uint8_t FanMonitor_getStallCount(const FanMonitor* fm) {
    return fm->stall_count;
}
