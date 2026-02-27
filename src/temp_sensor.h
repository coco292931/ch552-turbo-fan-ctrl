/**
 * @file temp_sensor.h
 * @brief 温度传感器控制模块 - 温度到电压映射
 */

#ifndef TEMP_SENSOR_H
#define TEMP_SENSOR_H

#include <Arduino.h>
#include "config.h"
#include "voltage_control.h"
#include "DS18B20.h"

/**
 * @class TempController
 * @brief 温度控制器类
 * 
 * 功能：
 * 1. 读取DS18B20温度
 * 2. 将温度映射到目标电压（一次或二次函数）
 * 3. 通过VoltageController设置电压
 */
class TempController {
private:
    DS18B20* tempSensor;           // DS18B20传感器对象
    VoltageController* voltCtrl;   // 电压控制器
    float current_temp;            // 当前温度
    uint32_t target_rpm;           // 当前温度对应的目标转速
    bool sensor_ready;             // 传感器就绪标志
    
    /**
     * @brief 一次函数映射：温度 → 电压
     * @param temp 温度(°C)
     * @return 目标电压(V)
     * 
     * 公式：V = k*T + b
     * 例：25°C → 7V, 80°C → 12V
     */
    float mapTempToVoltageLinear(float temp);
    
    /**
     * @brief 二次函数映射：温度 → 电压
     * @param temp 温度(°C)
     * @return 目标电压(V)
     * 
     * 公式：V = Vmin + (Vmax-Vmin) * ((T-Tmin)/(Tmax-Tmin))^2
     * 特点：低温时缓慢增加，高温时快速提升
     */
    float mapTempToVoltageQuadratic(float temp);

    /**
     * @brief 线性映射：温度 → 目标转速
     * @param temp 温度(°C)
     * @return 目标转速(RPM)
     *
     * 公式：RPM = RPM_TARGET_MIN + (RPM_TARGET_MAX - RPM_TARGET_MIN)
     *              * (T - TEMP_MIN) / (TEMP_MAX - TEMP_MIN)
     * 超出生效范围时自动截断到两端
     */
    uint32_t mapTempToRPM(float temp);
    /**
     * @brief 更新温度并调节电压
     * @return true=成功，false=失败
     */
    bool update();
    
    /**
     * @brief 获取当前温度
     * @return 温度(°C)
     */
    float getTemperature() const { return current_temp; }

    /**
     * @brief 获取当前温度对应的目标转速
     * @return 目标转速(RPM)
     */
    uint32_t getTargetRPM() const { return target_rpm; }
    
    /**
     * @brief 传感器是否就绪
     */
    bool isReady() const { return sensor_ready; }
    
    /**
     * @brief 检测超温
     * @return true=超温，false=正常
     */
    bool isOverheat();
};

#endif // TEMP_SENSOR_H
