import machine
import onewire
import ds18x20
import time

# 配置DS18B20连接的GPIO引脚（13脚）
ds_pin = machine.Pin(13)

# 创建OneWire对象
ds_sensor = ds18x20.DS18X20(onewire.OneWire(ds_pin))

# 扫描OneWire总线上的设备
roms = ds_sensor.scan()
print('发现的DS18B20设备:', roms)

# 主循环：读取温度
while True:
    try:
        # 发起温度转换命令
        ds_sensor.convert_temp()
        # 等待温度转换完成（至少750ms）
        time.sleep_ms(750)
        
        # 读取每个传感器的温度
        for rom in roms:
            temp = ds_sensor.read_temp(rom)
            print('温度: {:.2f} °C'.format(temp))
        
        # 每2秒读取一次
        time.sleep(2)
        
    except Exception as e:
        print('读取温度出错:', e)
        time.sleep(1)
