#line 1 "C:\\Users\\tonyp\\Downloads\\ch552-turbo-fan-ctrl\\src\\temp_sensor.c"
/**
 * @file temp_sensor.cpp
 * @brief 温度传感器控制模块实现
 */

#include "temp_sensor.h"

#if FEATURE_TEMP_CONTROL

static float TempController_mapTempToVoltageLinear(float temp) {
    float voltage = TEMP_VOLTAGE_K * temp + TEMP_VOLTAGE_B;
    if (voltage < VOUT_MIN) voltage = VOUT_MIN;
    if (voltage > VOUT_MAX) voltage = VOUT_MAX;
    return voltage;
}

static float TempController_mapTempToVoltageQuadratic(float temp) {
    float norm_temp = (temp - TEMP_MIN) / (TEMP_MAX - TEMP_MIN);
    float voltage;

    if (norm_temp < 0.0f) norm_temp = 0.0f;
    if (norm_temp > 1.0f) norm_temp = 1.0f;

    voltage = VOUT_MIN + (VOUT_MAX - VOUT_MIN) * norm_temp * norm_temp;
    if (voltage < VOUT_MIN) voltage = VOUT_MIN;
    if (voltage > VOUT_MAX) voltage = VOUT_MAX;
    return voltage;
}

static uint32_t TempController_mapTempToRPM(float temp) {
    float norm = (temp - TEMP_MIN) / (TEMP_MAX - TEMP_MIN);
    norm = (norm < 0.0f) ? 0.0f : (norm > 1.0f) ? 1.0f : norm;
    return (uint32_t)(RPM_TARGET_MIN + (RPM_TARGET_MAX - RPM_TARGET_MIN) * norm);
}

#if FEATURE_THERMISTOR_ADC
static float TempController_mapADCToTemp(int adc) {
    float ratio;
    float t;
    int denom = (THERM_ADC_AT_TEMP_MAX - THERM_ADC_AT_TEMP_MIN);

    if (denom == 0) {
        return TEMP_MIN;
    }

    ratio = (float)(adc - THERM_ADC_AT_TEMP_MIN) / (float)denom;
    if (ratio < 0.0f) ratio = 0.0f;
    if (ratio > 1.0f) ratio = 1.0f;

    t = TEMP_MIN + ratio * (TEMP_MAX - TEMP_MIN);
    if (t < -40.0f) t = -40.0f;
    if (t > 125.0f) t = 125.0f;
    return t;
}
#endif

void TempController_begin(TempController* tc, DS18B20* sensor, VoltageController* vc) {
    tc->tempSensor = sensor;
    tc->voltCtrl = vc;
    tc->current_temp = 25.0f;
    tc->target_rpm = RPM_TARGET_MIN;
    tc->sensor_ready = false;

#if FEATURE_THERMISTOR_ADC
    pinMode(PIN_TEMP_SENSOR, INPUT);
    tc->sensor_ready = true;
#else
    // 初始化DS18B20
    DS18B20_begin(tc->tempSensor);

    // 测试读取
    delay(200);
    float test_temp = DS18B20_readTemperatureFast(tc->tempSensor);
    if (test_temp != -999.0) {
        tc->sensor_ready = true;
        tc->current_temp = test_temp;
    }
#endif
}

bool TempController_update(TempController* tc) {
    if (!tc->sensor_ready) {
        return false;
    }

#if FEATURE_THERMISTOR_ADC
    int adc = analogRead(PIN_TEMP_SENSOR);
    if (adc < 0) {
        return false;
    }
    tc->current_temp = TempController_mapADCToTemp(adc);
#else
    float temp = DS18B20_readTemperatureFast(tc->tempSensor);

    if (temp == -999.0) {
        return false;
    }

    tc->current_temp = temp;
#endif

    float target_voltage;

#if TEMP_MAPPING_MODE == 0
    target_voltage = TempController_mapTempToVoltageLinear(tc->current_temp);
#else
    target_voltage = TempController_mapTempToVoltageQuadratic(tc->current_temp);
#endif

    VoltageController_setVoltage(tc->voltCtrl, target_voltage);

    tc->target_rpm = TempController_mapTempToRPM(tc->current_temp);

    return true;
}

bool TempController_isOverheat(const TempController* tc) {
    return (tc->current_temp >= TEMP_OVERHEAT);
}

float TempController_getTemperature(const TempController* tc) {
    return tc->current_temp;
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
    tc->target_rpm = RPM_TARGET_MIN;
    tc->sensor_ready = false;
    VoltageController_setVoltage(tc->voltCtrl, VOUT_DEFAULT);
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

uint32_t TempController_getTargetRPM(const TempController* tc) {
    return tc->target_rpm;
}

bool TempController_isReady(const TempController* tc) {
    return tc->sensor_ready;
}

#endif
