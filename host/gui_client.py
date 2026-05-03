import tkinter as tk
from tkinter import ttk, messagebox, scrolledtext
import socket
import json

HOST = '127.0.0.1'
PORT = 8888

def send_cmd(cmd_dict):
    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.settimeout(0.5)
        s.connect((HOST, PORT))
        s.sendall(json.dumps(cmd_dict).encode('utf-8'))
        resp = s.recv(32768).decode('utf-8', errors='ignore')
        s.close()
        return json.loads(resp)
    except:
        return None

class FanControlGUI:
    def __init__(self, root):
        self.root = root
        self.root.title("涡扇控制上位机开发面板 - 全功能")
        self.root.geometry("600x700")
        
        self.notebook = ttk.Notebook(root)
        self.notebook.pack(fill="both", expand=True, padx=5, pady=5)
        
        self.tab_dash = ttk.Frame(self.notebook)
        self.tab_adv = ttk.Frame(self.notebook)
        self.tab_term = ttk.Frame(self.notebook)
        
        self.notebook.add(self.tab_dash, text="主控制台")
        self.notebook.add(self.tab_adv, text="高级设置")
        self.notebook.add(self.tab_term, text="串行终端")
        
        self.setup_dashboard()
        self.setup_advanced()
        self.setup_terminal()
        
        self.root.after(1000, self.update_status)
        self.root.after(500, self.update_logs)

    def setup_dashboard(self):
        # --- 状态区 ---
        status_frame = ttk.LabelFrame(self.tab_dash, text="系统与硬件状态")
        status_frame.pack(padx=10, pady=10, fill="x")
        
        self.lbl_server = ttk.Label(status_frame, text="服务连接: 未连接", foreground="red")
        self.lbl_server.grid(row=0, column=0, sticky="w", padx=5, pady=2)
        
        self.lbl_hw_conn = ttk.Label(status_frame, text="硬件串口: 未知")
        self.lbl_hw_conn.grid(row=0, column=1, sticky="w", padx=5, pady=2)
        
        self.lbl_hw_temp = ttk.Label(status_frame, text="硬件温度: -- ℃")
        self.lbl_hw_temp.grid(row=1, column=0, sticky="w", padx=5, pady=2)
        
        self.lbl_hw_volt = ttk.Label(status_frame, text="当前电压: -- V")
        self.lbl_hw_volt.grid(row=1, column=1, sticky="w", padx=5, pady=2)
        
        self.lbl_hw_rpm = ttk.Label(status_frame, text="实际转速: -- RPM")
        self.lbl_hw_rpm.grid(row=2, column=0, sticky="w", padx=5, pady=2)
        
        self.lbl_hw_target = ttk.Label(status_frame, text="目标转速: -- RPM")
        self.lbl_hw_target.grid(row=2, column=1, sticky="w", padx=5, pady=2)
        
        self.lbl_hw_pwm = ttk.Label(status_frame, text="当前PWM: --")
        self.lbl_hw_pwm.grid(row=3, column=0, sticky="w", padx=5, pady=2)
        
        self.lbl_hw_mode = ttk.Label(status_frame, text="硬件模式: --")
        self.lbl_hw_mode.grid(row=3, column=1, sticky="w", padx=5, pady=2)
        
        self.lbl_hw_error = ttk.Label(status_frame, text="硬件警告: --")
        self.lbl_hw_error.grid(row=4, column=0, sticky="w", padx=5, pady=2)
        
        self.lbl_pc_auto = ttk.Label(status_frame, text="上位机PC接管: --")
        self.lbl_pc_auto.grid(row=4, column=1, sticky="w", padx=5, pady=2)

        # --- 控制区 ---
        control_frame = ttk.LabelFrame(self.tab_dash, text="基础与手动控制")
        control_frame.pack(padx=10, pady=5, fill="both", expand=True)
        
        # 模式操作
        btn_frame = ttk.Frame(control_frame)
        btn_frame.pack(pady=10, fill="x")
        ttk.Button(btn_frame, text="恢复硬件 AUTO 模式", command=lambda: send_cmd({"cmd": "set_mode_device", "value": "AUTO"})).pack(side="left", padx=5)
        ttk.Button(btn_frame, text="启用 PC温控 接管", command=lambda: send_cmd({"cmd": "set_pc_auto", "value": True})).pack(side="left", padx=5)
        ttk.Button(btn_frame, text="清除所有 OVERRIDE", command=lambda: send_cmd({"cmd": "raw_cmd", "value": "SET:CLEAR_OVERRIDES=1"})).pack(side="left", padx=5)
        
        # PWM 控制
        f1 = ttk.Frame(control_frame)
        f1.pack(fill="x", pady=5)
        ttk.Label(f1, text="PWM (推荐 5-11):").pack(side="left", padx=5)
        self.pwm_var = tk.IntVar(value=8)
        ttk.Scale(f1, from_=0, to=20, variable=self.pwm_var, orient="horizontal").pack(side="left", fill="x", expand=True, padx=5)
        self.lbl_pwm_val = ttk.Label(f1, text="8", width=4)
        self.lbl_pwm_val.pack(side="left")
        self.pwm_var.trace_add("write", lambda *args: self.lbl_pwm_val.config(text=f"{self.pwm_var.get()}"))
        ttk.Button(f1, text="设置PWM", command=lambda: send_cmd({"cmd": "set_pwm", "value": self.pwm_var.get()})).pack(side="left", padx=5)
        
        # RPM 控制
        f2 = ttk.Frame(control_frame)
        f2.pack(fill="x", pady=5)
        ttk.Label(f2, text="RPM (0-3000):").pack(side="left", padx=5)
        self.rpm_var = tk.IntVar(value=1500)
        ttk.Scale(f2, from_=0, to=3000, variable=self.rpm_var, orient="horizontal").pack(side="left", fill="x", expand=True, padx=5)
        self.lbl_rpm_val = ttk.Label(f2, text="1500", width=5)
        self.lbl_rpm_val.pack(side="left")
        self.rpm_var.trace_add("write", lambda *args: self.lbl_rpm_val.config(text=f"{self.rpm_var.get()}"))
        ttk.Button(f2, text="设置RPM", command=lambda: send_cmd({"cmd": "set_rpm", "value": self.rpm_var.get()})).pack(side="left", padx=5)
        
        # PC 温度模拟
        f_mock = ttk.Frame(control_frame)
        f_mock.pack(fill="x", pady=15)
        ttk.Label(f_mock, text="模拟 PC温度 (°C):").pack(side="left", padx=5)
        self.sim_temp_var = tk.DoubleVar(value=40.0)
        ttk.Scale(f_mock, from_=20.0, to=100.0, variable=self.sim_temp_var, orient="horizontal").pack(side="left", fill="x", expand=True, padx=5)
        self.lbl_sim_temp_val = ttk.Label(f_mock, text="40.0", width=5)
        self.lbl_sim_temp_val.pack(side="left")
        self.sim_temp_var.trace_add("write", lambda *args: self.lbl_sim_temp_val.config(text=f"{self.sim_temp_var.get():.1f}"))
        self.chk_auto_report_var = tk.BooleanVar(value=False)
        ttk.Checkbutton(f_mock, text="持续向服务上报", variable=self.chk_auto_report_var).pack(side="left", padx=5)

    def setup_advanced(self):
        frame = ttk.Frame(self.tab_adv)
        frame.pack(padx=10, pady=10, fill="both", expand=True)
        
        ttk.Label(frame, text="* 注意：高级控制均为底层直接覆盖命令 *", foreground="gray").grid(row=0, column=0, columnspan=3, pady=(0, 15))
        
        # 硬件调压
        ttk.Label(frame, text="直接设置电压 (V):").grid(row=1, column=0, pady=5, sticky="w")
        self.volt_var = tk.DoubleVar(value=5.0)
        ttk.Entry(frame, textvariable=self.volt_var).grid(row=1, column=1)
        ttk.Button(frame, text="发送", command=lambda: send_cmd({"cmd": "raw_cmd", "value": f"SET:VOLTAGE={self.volt_var.get()}"})).grid(row=1, column=2, padx=5)

        ttk.Separator(frame, orient="horizontal").grid(row=2, column=0, columnspan=3, sticky="we", pady=15)

        # 硬件温控阈值修改
        ttk.Label(frame, text="固件 TEMP_MIN (起转温度):").grid(row=3, column=0, pady=5, sticky="w")
        self.tmin_var = tk.DoubleVar()
        ttk.Entry(frame, textvariable=self.tmin_var).grid(row=3, column=1)
        ttk.Button(frame, text="设置", command=lambda: send_cmd({"cmd": "raw_cmd", "value": f"SET:TEMP_MIN={self.tmin_var.get()}"})).grid(row=3, column=2, padx=5)
        
        ttk.Label(frame, text="固件 TEMP_MAX (满载温度):").grid(row=4, column=0, pady=5, sticky="w")
        self.tmax_var = tk.DoubleVar()
        ttk.Entry(frame, textvariable=self.tmax_var).grid(row=4, column=1)
        ttk.Button(frame, text="设置", command=lambda: send_cmd({"cmd": "raw_cmd", "value": f"SET:TEMP_MAX={self.tmax_var.get()}"})).grid(row=4, column=2, padx=5)

        ttk.Label(frame, text="固件 TEMP_OVERHEAT (超温):").grid(row=5, column=0, pady=5, sticky="w")
        self.tov_var = tk.DoubleVar()
        ttk.Entry(frame, textvariable=self.tov_var).grid(row=5, column=1)
        ttk.Button(frame, text="设置", command=lambda: send_cmd({"cmd": "raw_cmd", "value": f"SET:TEMP_OVERHEAT={self.tov_var.get()}"})).grid(row=5, column=2, padx=5)
        
        ttk.Separator(frame, orient="horizontal").grid(row=6, column=0, columnspan=3, sticky="we", pady=15)
        
        # 维护功能
        f_misc = ttk.Frame(frame)
        f_misc.grid(row=7, column=0, columnspan=3, sticky="we")
        ttk.Button(f_misc, text="复位告警状态 (RESET)", command=lambda: send_cmd({"cmd": "raw_cmd", "value": "RESET"})).pack(side="left", padx=5)
        ttk.Button(f_misc, text="解锁强制保护 (UNLOCK)", command=lambda: send_cmd({"cmd": "raw_cmd", "value": "UNLOCK"})).pack(side="left", padx=5)
        
        f_echo = ttk.Frame(frame)
        f_echo.grid(row=8, column=0, columnspan=3, sticky="we", pady=10)
        ttk.Button(f_echo, text="开启设备回显 ECHO=1", command=lambda: send_cmd({"cmd": "raw_cmd", "value": "SET:ECHO=1"})).pack(side="left", padx=5)
        ttk.Button(f_echo, text="关闭设备回显 ECHO=0", command=lambda: send_cmd({"cmd": "raw_cmd", "value": "SET:ECHO=0"})).pack(side="left", padx=5)

    def setup_terminal(self):
        f = ttk.Frame(self.tab_term)
        f.pack(fill="both", expand=True, padx=5, pady=5)
        
        # 控制栏
        btn_bar = ttk.Frame(f)
        btn_bar.pack(fill="x", pady=2)
        ttk.Button(btn_bar, text="GET:INFO", command=lambda: send_cmd({"cmd": "raw_cmd", "value": "GET:INFO"})).pack(side="left")
        ttk.Button(btn_bar, text="GET:CONFIG", command=lambda: send_cmd({"cmd": "raw_cmd", "value": "GET:CONFIG"})).pack(side="left")
        ttk.Button(btn_bar, text="GET:OVERRIDE", command=lambda: send_cmd({"cmd": "raw_cmd", "value": "GET:OVERRIDE"})).pack(side="left")
        ttk.Button(btn_bar, text="GET:MODE", command=lambda: send_cmd({"cmd": "raw_cmd", "value": "GET:MODE"})).pack(side="left")
        
        self.auto_status_var = tk.BooleanVar(value=True)
        ttk.Checkbutton(btn_bar, text="定时获取状态", variable=self.auto_status_var, 
            command=lambda: send_cmd({"cmd": "set_auto_status", "value": self.auto_status_var.get()})).pack(side="left", padx=5)

        self.hide_ping_var = tk.BooleanVar(value=True)
        ttk.Checkbutton(btn_bar, text="隐藏日常心跳刷屏", variable=self.hide_ping_var, 
            command=lambda: send_cmd({"cmd": "set_hide_ping_logs", "value": self.hide_ping_var.get()})).pack(side="left", padx=5)
        
        ttk.Button(btn_bar, text="导出视图", command=self.dump_logs).pack(side="right", padx=5)
        ttk.Button(btn_bar, text="清屏", command=lambda: self.txt_log.delete(1.0, tk.END)).pack(side="right")
        
        # 终端输出框
        self.txt_log = scrolledtext.ScrolledText(f, height=20, bg="#1E1E1E", fg="#A5C261", font=("Consolas", 10))
        self.txt_log.pack(fill="both", expand=True, pady=5)
        
        # 手动输入框
        b = ttk.Frame(f)
        b.pack(fill="x")
        self.cmd_entry = ttk.Entry(b)
        self.cmd_entry.pack(side="left", fill="x", expand=True)
        self.cmd_entry.bind("<Return>", lambda e: self.send_raw_from_ui())
        ttk.Button(b, text="发送指令", command=self.send_raw_from_ui).pack(side="right")

    def send_raw_from_ui(self):
        cmd = self.cmd_entry.get().strip()
        if cmd:
            send_cmd({"cmd": "raw_cmd", "value": cmd})
            self.cmd_entry.delete(0, tk.END)

    def dump_logs(self):
        import time
        filename = time.strftime("gui_term_dump_%Y%md%H%M%S.txt")
        try:
            with open(filename, "w", encoding="utf-8") as f:
                f.write(self.txt_log.get(1.0, tk.END))
            messagebox.showinfo("成功", f"当前控制台视图已转储到:\n{filename}")
        except Exception as e:
            messagebox.showerror("错误", f"转储失败: {e}")

    def update_logs(self):
        """定期从服务端拉取终端日志并显示"""
        resp = send_cmd({"cmd": "get_logs"})
        if resp and "logs" in resp and resp["logs"]:
            self.txt_log.config(state="normal")
            for line in resp["logs"]:
                self.txt_log.insert(tk.END, line + "\n")
            self.txt_log.see(tk.END)
            self.txt_log.config(state="disabled")
        self.root.after(200, self.update_logs)

    def update_status(self):
        """定期拉取解析好的运行状态仪表盘数据"""
        if self.chk_auto_report_var.get():
            send_cmd({"cmd": "report_pc_temp", "value": self.sim_temp_var.get()})
            
        resp = send_cmd({"cmd": "get_status"})
        
        if not resp:
            self.lbl_server.config(text="服务连接: 断连/无响应", foreground="red")
        else:
            self.lbl_server.config(text="服务连接: 正常", foreground="green")
            
            hw = resp.get("hardware", {})
            pc = resp.get("pc_state", {})
            
            conn = hw.get("conn")
            self.lbl_hw_conn.config(text="已连接" if conn == 1 else "未连接 (正在重试)")
            
            self.lbl_hw_temp.config(text=f"硬件温度: {hw.get('temp', '--')} ℃")
            self.lbl_hw_volt.config(text=f"估计电压: {hw.get('volt', '--')} V")
            self.lbl_hw_rpm.config(text=f"当前转速: {hw.get('rpm', '--')} RPM")
            self.lbl_hw_target.config(text=f"目标调速: {hw.get('target_rpm', '--')} RPM")
            self.lbl_hw_pwm.config(text=f"实时PWM : {hw.get('pwm', '--')} / 255")
            self.lbl_hw_mode.config(text=f"当前模式: {hw.get('mode', '--')}")
            
            err_code = str(hw.get("error", "0x0"))
            self.lbl_hw_error.config(text=f"硬件告警: {err_code}", foreground="red" if (err_code != "0x0" and err_code != "0") else "black")
            
            # PC 上位机状态
            is_pc = pc.get('pc_auto_mode', False)
            pc_t = pc.get('current_pc_temp', '--')
            if isinstance(pc_t, float): pc_t = f"{pc_t:.1f}"
            self.lbl_pc_auto.config(text=f"上位机接管: {'开启中' if is_pc else '关闭'}  |  内部温度: {pc_t} ℃")

        self.root.after(1000, self.update_status)

if __name__ == "__main__":
    root = tk.Tk()
    app = FanControlGUI(root)
    root.mainloop()
