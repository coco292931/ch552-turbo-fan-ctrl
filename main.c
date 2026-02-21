#include <stdio.h>
#include "ds18b20.h"

// 延时函数 - 需要根据实际MCU修改
void delay_ms(uint16_t ms) {
    // 根据实际MCU实现毫秒延时
    // ESP32: vTaskDelay(ms / portTICK_PERIOD_MS);
    // CH552G: 自己实现
}

int main(void) {
    float temperature;
    
    // 初始化系统时钟、串口等
    // system_init();
    // uart_init(115200);
    
    // 初始化DS18B20
    ds18b20_init_pin();
    
    printf("DS18B20温度读取示例\n");
    
    // === 高级配置示例 ===
    
    // 1. 设置分辨率为9位（更快的转换速度，约94ms）
    // ds18b20_set_resolution(DS18B20_RESOLUTION_9BIT);
    
    // 2. 设置分辨率为12位（最高精度，默认值，约750ms）
    ds18b20_set_resolution(DS18B20_RESOLUTION_12BIT);
    
    // 3. 设置温度报警范围：25°C到80°C
    //    当温度超出此范围时，可以通过报警搜索命令检测
    ds18b20_set_alarm_temperature(80, 25);
    
    printf("配置完成：12位分辨率，报警范围 25-80°C\n");
    
    while (1) {
        // 读取温度（方法1：固定750ms等待）
        // temperature = ds18b20_read_temperature();
        
        // 读取温度（方法2：根据分辨率自动调整等待时间，更快）
        temperature = ds18b20_read_temperature_fast();
        
        if (temperature != -999.0) {
            printf("温度: %.2f °C\n", temperature);
        } else {
            printf("读取温度失败！\n");
        }
        
        // 每2秒读取一次
        delay_ms(2000);
    }
    
    return 0;
}
