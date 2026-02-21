/**
 * @file temp_sensor.cpp
 * @brief 温度传感器控制模块实现
 */

#include "temp_sensor.h"

void TempController::begin(DS18B20* sensor, VoltageController* vc) {
    tempSensor = sensor;
    voltCtrl = vc;
    current_temp = 25.0;  // 默认温度
    sensor_ready = false;
    
    // 初始化DS18B20
    tempSensor->begin();
    
    // 设置分辨率为10位（187ms转换，足够快）
    tempSensor->setResolution(DS18B20_RESOLUTION_10BIT);
    
    // 设置报警范围
    tempSensor->setAlarmTemperature(TEMP_MAX, TEMP_MIN);
    
    // 测试读取
    delay(200);
    float test_temp = tempSensor->readTemperatureFast();
    if (test_temp != -999.0) {
        sensor_ready = true;
        current_temp = test_temp;
    }
}

float TempController::mapTempToVoltageLinear(float temp) {
    // V = k*T + b
    float voltage = TEMP_VOLTAGE_K * temp + TEMP_VOLTAGE_B;
    return constrain(voltage, VOUT_MIN, VOUT_MAX);
}

float TempController::mapTempToVoltageQuadratic(float temp) {
    // 归一化温度：0 ~ 1
    float norm_temp = (temp - TEMP_MIN) / (TEMP_MAX - TEMP_MIN);
    norm_temp = constrain(norm_temp, 0.0, 1.0);
    
    // 二次映射：V = Vmin + (Vmax - Vmin) * T^2
    float voltage = VOUT_MIN + (VOUT_MAX - VOUT_MIN) * norm_temp * norm_temp;
    
    return constrain(voltage, VOUT_MIN, VOUT_MAX);
}

bool TempController::update() {
    if (!sensor_ready) {
        return false;
    }
    
    // 读取温度
    float temp = tempSensor->readTemperatureFast();
    
    if (temp == -999.0) {
        // 读取失败，保持当前状态
        return false;
    }
    
    current_temp = temp;
    
    // 选择映射方式（在config.h中配置）
    float target_voltage;
    
#if TEMP_MAPPING_MODE == 0
    // 一次函数映射
    target_voltage = mapTempToVoltageLinear(temp);
#else
    // 二次函数映射
    target_voltage = mapTempToVoltageQuadratic(temp);
#endif
    
    // 设置电压
    voltCtrl->setVoltage(target_voltage);
    
    return true;
}

bool TempController::isOverheat() {
    return (current_temp >= TEMP_OVERHEAT);
}
