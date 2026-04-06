/**
 * @file fan_monitor.h
 * @brief 风扇转速监控模块
 */

#ifndef FAN_MONITOR_H
#define FAN_MONITOR_H

#include <stdint.h>
#include <stdbool.h>
#include "config.h"

typedef struct {
    uint8_t tach_pin;
    volatile uint32_t pulse_count;
    uint32_t last_rpm;
    unsigned long last_calc_time;
    uint8_t stall_count;
    bool is_stalled;
} FanMonitor;

void FanMonitor_begin(FanMonitor* fm, uint8_t pin);
uint32_t FanMonitor_updateRPM(FanMonitor* fm);
uint32_t FanMonitor_getRPM(const FanMonitor* fm);
bool FanMonitor_isStalled(const FanMonitor* fm);
void FanMonitor_resetStall(FanMonitor* fm);
uint8_t FanMonitor_getStallCount(const FanMonitor* fm);

#endif // FAN_MONITOR_H
