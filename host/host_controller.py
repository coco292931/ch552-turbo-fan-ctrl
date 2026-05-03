import serial
import threading
import time
import json
import socket
import sys
import collections
import datetime

class FanController:
    def __init__(self, port, baudrate=115200, log_filename="serial_log.txt"):
        self.serial = serial.Serial(port, baudrate, timeout=1)
        self.connected = False
        self.lock = threading.Lock()
        self.status_data = {}
        self.running = True
        self.auto_status = True
        self.auto_ping = True  # 新增控制 PINGONPG 的开关
        self.hide_ping_logs = False  # 新增隐藏部分维持命令刷屏的开关
        
        self.log_file = open(log_filename, "a", encoding="utf-8")
        self.recent_logs = collections.deque(maxlen=200)
        
        # 启动串口读取线程
        self.read_thread = threading.Thread(target=self._read_loop, daemon=True)
        self.read_thread.start()
        
        self.log_msg("--- 系统启动，开启握手 ---")
        self.send_command("HELLO")
        time.sleep(0.5)
        self.send_command("CONNECT")
        time.sleep(0.5)
        self.send_command("SET:ECHO=0") # 默认关闭回显，方便解析
        
        # 启动心跳及状态查询线程
        self.keepalive_thread = threading.Thread(target=self._keepalive_loop, daemon=True)
        self.keepalive_thread.start()

    def log_msg(self, msg, direction="SYS"):
        ts = datetime.datetime.now().strftime("%H:%M:%S.%f")[:-3]
        log_line = f"[{ts}] [{direction}] {msg}"
        
        # 始终保存完整日志到文件
        self.log_file.write(log_line + "\n")
        self.log_file.flush()
        
        # 可选过滤：如果开启了隐藏，就不把 PING/心跳等追加到传给GUI显示的队列中
        if self.hide_ping_logs:
            if msg == "PING" or msg == "PONG":
                return
            if msg == "GET:STATUS" or msg.startswith('{"conn":'):
                return
                
        self.recent_logs.append(log_line)

    def send_command(self, cmd):
        with self.lock:
            self.log_msg(cmd, "TX")
            self.serial.write(f"{cmd}\r\n".encode('ascii'))
            
    def _read_loop(self):
        while self.running:
            try:
                line = self.serial.readline().decode('ascii', errors='ignore').strip()
                if not line: continue
                
                self.log_msg(line, "RX")
                
                if line.startswith("OK:CONNECTED"):
                    self.connected = True
                elif line.startswith("{"):  # 回报状态 JSON
                    try:
                        self.status_data = json.loads(line)
                    except:
                        pass
            except Exception as e:
                self.log_msg(f"读取异常: {e}", "SYS")
                
    def _keepalive_loop(self):
        # 保持连接 PING，并支持开启/关闭自动更新 STATUS
        while self.running:
            if self.connected:
                if self.auto_ping:
                    self.send_command("PING")
                if self.auto_status:
                    self.send_command("GET:STATUS")
            time.sleep(2)

    def close(self):
        self.running = False
        if self.connected:
            self.send_command("DISCONNECT")
            time.sleep(0.5)
        self.serial.close()
        self.log_file.close()

def main_host_server(port_name):
    controller = FanController(port_name)
    
    # 上位机自身的智能温控策略配置
    state = {
        "pc_auto_mode": False,   
        "current_pc_temp": 40.0, 
    }
    
    def pc_auto_task():
        while controller.running:
            if state["pc_auto_mode"] and controller.connected:
                temp = state["current_pc_temp"]
                # 自动启停：低温停机，高温按 RPM 目标驱动。
                # 固件再根据 RPM 标定曲线换算成实际 PWM。
                if temp < 40:
                    rpm = 0
                elif temp >= 80:
                    rpm = 3000
                else:
                    rpm = int((temp - 40.0) * (3000.0 / 40.0))
                    if rpm < 800:
                        rpm = 800
                controller.send_command(f"SET:RPM={rpm}")
            time.sleep(2)
            
    threading.Thread(target=pc_auto_task, daemon=True).start()

    server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server.bind(('127.0.0.1', 8888))
    server.listen(5)
    print("上位机服务运行中。监听端口: 8888 ...")
    
    try:
        while True:
            client, addr = server.accept()
            data = client.recv(4096).decode('utf-8').strip()
            if not data:
                client.close()
                continue
            
            try:
                req = json.loads(data)
                cmd = req.get("cmd")
                val = req.get("value")
                
                resp = {"status": "ok"}
                
                # API 路由
                if cmd == "set_mode_device":
                    state["pc_auto_mode"] = False
                    controller.send_command(f"SET:MODE={val}")
                elif cmd == "set_pc_auto":
                    state["pc_auto_mode"] = bool(val)
                    if state["pc_auto_mode"]:
                        controller.send_command("SET:MODE=MANUAL")
                elif cmd == "report_pc_temp":
                    state["current_pc_temp"] = float(val)
                elif cmd == "set_pwm":
                    state["pc_auto_mode"] = False
                    controller.send_command("SET:MODE=MANUAL")
                    controller.send_command(f"SET:PWM={int(val)}")
                elif cmd == "set_hide_ping_logs":
                    # 屏蔽显示
                    controller.hide_ping_logs = bool(val)
                elif cmd == "set_rpm":
                    state["pc_auto_mode"] = False
                    controller.send_command("SET:MODE=MANUAL")
                    controller.send_command(f"SET:RPM={int(val)}")
                elif cmd == "set_auto_status":
                    # 可选开启或关闭长轮询 GET:STATUS
                    controller.auto_status = bool(val)
                elif cmd == "set_auto_ping":
                    # 可控的关闭 PING 机制
                    controller.auto_ping = bool(val)
                elif cmd == "raw_cmd":
                    # 直接投递原始字符串
                    controller.send_command(str(val))
                elif cmd == "get_logs":
                    # 获取近期终端日志并在服务端清空缓存
                    logs = list(controller.recent_logs)
                    controller.recent_logs.clear()
                    resp["logs"] = logs
                elif cmd == "get_status":
                    resp["hardware"] = controller.status_data
                    resp["pc_state"] = state
                else:
                    resp = {"status": "error", "message": "Unknown cmd"}
                    
                client.sendall((json.dumps(resp) + "\n").encode('utf-8'))
            except Exception as e:
                client.sendall(b'{"status":"error", "message":"Invalid format"}\n')
            
            client.close()
            
    except KeyboardInterrupt:
        print("\n正在安全关闭连接...")
    finally:
        controller.close()

if __name__ == '__main__':
    port = sys.argv[1] if len(sys.argv) > 1 else 'COM3'
    main_host_server(port)
