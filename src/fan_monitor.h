/**
 * @file fan_monitor.h
 * @brief 风扇转速监控模块
 */

#ifndef FAN_MONITOR_H
#define FAN_MONITOR_H

#include <Arduino.h>
#include "config.h"

/**
 * @class FanMonitor
 * @brief 风扇转速监控类
 * 
 * 功能：
 * 1. 通过FG信号检测风扇转速
 * 2. 堵转检测
 * 3. 异常计数与重试机制
 */
class FanMonitor {
private:
    uint8_t tach_pin;              // 转速检测引脚
    volatile uint32_t pulse_count; // 脉冲计数（中断更新）
    uint32_t last_rpm;             // 上次计算的RPM
    unsigned long last_calc_time;  // 上次计算时间
    uint8_t stall_count;           // 堵转计数
    bool is_stalled;               // 堵转标志
    
    // 静态中断处理函数
    static FanMonitor* instance;
    static void tachISR();
    
public:
    /**
     * @brief 初始化风扇监控
     * @param pin 转速检测引脚
     */
    void begin(uint8_t pin);
    
    /**
     * @brief 更新转速计算（定期调用）
     * @return 当前RPM
     */
    uint32_t updateRPM();
    
    /**
     * @brief 获取当前RPM
     */
    uint32_t getRPM() const { return last_rpm; }
    
    /**
     * @brief 检测是否堵转
     * @return true=堵转，false=正常
     */
    bool isStalled() const { return is_stalled; }
    
    /**
     * @brief 重置堵转状态
     */
    void resetStall();
    
    /**
     * @brief 获取堵转计数
     */
    uint8_t getStallCount() const { return stall_count; }
};

#endif // FAN_MONITOR_H
