/**
 * @file temp_sensor.c
 * @brief 温度传感器控制模块实现
 */

#include "temp_sensor.h"

#if FEATURE_TEMP_CONTROL

#if TEMP_MAPPING_MODE == 0
static float TempController_mapTempToVoltageLinear(float temp, float temp_min, float temp_max) {
    float k;
    float b;
    float voltage;

    if (temp_max <= temp_min) {
        return VOUT_DEFAULT;
    }

    // 线性插值：temp_min->VOUT_MIN, temp_max->VOUT_MAX
    k = (VOUT_MAX - VOUT_MIN) / (temp_max - temp_min);
    b = VOUT_MIN - k * temp_min;
    voltage = k * temp + b;
    if (voltage < VOUT_MIN) voltage = VOUT_MIN;
    if (voltage > VOUT_MAX) voltage = VOUT_MAX;
    return voltage;
}
#else
static float TempController_mapTempToVoltageQuadratic(float temp, float temp_min, float temp_max) {
    float norm_temp = (temp - temp_min) / (temp_max - temp_min);
    float voltage;

    if (norm_temp < 0.0f) norm_temp = 0.0f;
    if (norm_temp > 1.0f) norm_temp = 1.0f;

    voltage = VOUT_MIN + (VOUT_MAX - VOUT_MIN) * norm_temp * norm_temp;
    if (voltage < VOUT_MIN) voltage = VOUT_MIN;
    if (voltage > VOUT_MAX) voltage = VOUT_MAX;
    return voltage;
}
#endif

static uint32_t TempController_mapTempToRPM(float temp, float temp_min, float temp_max) {
    float norm = (temp - temp_min) / (temp_max - temp_min);
    norm = (norm < 0.0f) ? 0.0f : (norm > 1.0f) ? 1.0f : norm;
    return (uint32_t)(RPM_TARGET_MIN + (RPM_TARGET_MAX - RPM_TARGET_MIN) * norm);
}

void TempController_setThresholds(TempController* tc, float temp_min, float temp_max, float temp_overheat) {
    if (temp_max <= temp_min) {
        return;
    }
    tc->temp_min = temp_min;
    tc->temp_max = temp_max;
    tc->temp_overheat = temp_overheat;
}

void TempController_begin(TempController* tc, DS18B20* sensor, VoltageController* vc) {
    tc->tempSensor = sensor;
    tc->voltCtrl = vc;
    tc->current_temp = 25.0f;
    tc->suggested_voltage = VOUT_DEFAULT;
    tc->target_rpm = RPM_TARGET_MIN;
    tc->temp_min = TEMP_MIN;
    tc->temp_max = TEMP_MAX;
    tc->temp_overheat = TEMP_OVERHEAT;
    tc->sensor_ready = false;

    // 初始化DS18B20
    DS18B20_begin(tc->tempSensor);

    // 测试读取
    delay(200);
    float test_temp = DS18B20_readTemperatureFast(tc->tempSensor);
    if (test_temp != -999.0) {
        tc->sensor_ready = true;
        tc->current_temp = test_temp;
    }

#if TEMP_MAPPING_MODE == 0
    tc->suggested_voltage = TempController_mapTempToVoltageLinear(tc->current_temp, tc->temp_min, tc->temp_max);
#else
    tc->suggested_voltage = TempController_mapTempToVoltageQuadratic(tc->current_temp, tc->temp_min, tc->temp_max);
#endif
    tc->target_rpm = TempController_mapTempToRPM(tc->current_temp, tc->temp_min, tc->temp_max);
}

bool TempController_update(TempController* tc) {
    if (!tc->sensor_ready) {
        return false;
    }

    float temp = DS18B20_readTemperatureFast(tc->tempSensor);

    if (temp == -999.0) {
        return false;
    }

    tc->current_temp = temp;

#if TEMP_MAPPING_MODE == 0
    tc->suggested_voltage = TempController_mapTempToVoltageLinear(tc->current_temp, tc->temp_min, tc->temp_max);
#else
    tc->suggested_voltage = TempController_mapTempToVoltageQuadratic(tc->current_temp, tc->temp_min, tc->temp_max);
#endif

    tc->target_rpm = TempController_mapTempToRPM(tc->current_temp, tc->temp_min, tc->temp_max);

    return true;
}

bool TempController_isOverheat(const TempController* tc) {
    return (tc->current_temp >= tc->temp_overheat);
}

float TempController_getTemperature(const TempController* tc) {
    return tc->current_temp;
}

float TempController_getSuggestedVoltage(const TempController* tc) {
    return tc->suggested_voltage;
}

uint32_t TempController_getTargetRPM(const TempController* tc) {
    return tc->target_rpm;
}

bool TempController_isReady(const TempController* tc) {
    return tc->sensor_ready;
}

#else

void TempController_begin(TempController* tc, DS18B20* sensor, VoltageController* vc) {
    tc->tempSensor = sensor;
    tc->voltCtrl = vc;
    tc->current_temp = 25.0f;
    tc->suggested_voltage = VOUT_DEFAULT;
    tc->target_rpm = RPM_TARGET_MIN;
    tc->temp_min = TEMP_MIN;
    tc->temp_max = TEMP_MAX;
    tc->temp_overheat = TEMP_OVERHEAT;
    tc->sensor_ready = false;
}

bool TempController_update(TempController* tc) {
    (void)tc;
    return false;
}

bool TempController_isOverheat(const TempController* tc) {
    (void)tc;
    return false;
}

float TempController_getTemperature(const TempController* tc) {
    return tc->current_temp;
}

float TempController_getSuggestedVoltage(const TempController* tc) {
    return tc->suggested_voltage;
}

uint32_t TempController_getTargetRPM(const TempController* tc) {
    return tc->target_rpm;
}

bool TempController_isReady(const TempController* tc) {
    return tc->sensor_ready;
}

void TempController_setThresholds(TempController* tc, float temp_min, float temp_max, float temp_overheat) {
    (void)temp_min;
    (void)temp_max;
    (void)temp_overheat;
    // 温控关闭时不支持阈值覆盖
    (void)tc;
}

#endif
