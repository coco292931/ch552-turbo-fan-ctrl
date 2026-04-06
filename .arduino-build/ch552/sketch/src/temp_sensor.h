#line 1 "C:\\Users\\tonyp\\Downloads\\ch552-turbo-fan-ctrl\\src\\temp_sensor.h"
/**
 * @file temp_sensor.h
 * @brief 温度传感器控制模块 - 温度到电压映射
 */

#ifndef TEMP_SENSOR_H
#define TEMP_SENSOR_H

#include "arduino_compat.h"
#include "config.h"
#include "voltage_control.h"
#include "../lib/DS18B20/DS18B20.h"

typedef struct {
    DS18B20* tempSensor;
    VoltageController* voltCtrl;
    float current_temp;
    uint32_t target_rpm;
    bool sensor_ready;
} TempController;

void TempController_begin(TempController* tc, DS18B20* sensor, VoltageController* vc);
bool TempController_update(TempController* tc);
float TempController_getTemperature(const TempController* tc);
uint32_t TempController_getTargetRPM(const TempController* tc);
bool TempController_isReady(const TempController* tc);
bool TempController_isOverheat(const TempController* tc);

#endif // TEMP_SENSOR_H
