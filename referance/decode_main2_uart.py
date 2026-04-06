#!/usr/bin/env python3
"""Decode CH552 main2 telemetry lines.

Input line format (from firmware):
    temp_bits,rpm,actual_v_bits,target_v_bits
All fields are 8-hex-digit uppercase/lowercase values.

Notes:
    actual_v: measured voltage from ADC (real output)
    target_v: controller target voltage (setpoint in controller state)
    map_v: voltage mapped from temperature curve (calculated on PC for reference)
"""

from __future__ import annotations

import argparse
import re
import struct
import sys
import time

TEMP_MIN = 30.0
TEMP_MAX = 45.0
VOUT_MIN = 5.0
VOUT_MAX = 12.0
TEMP_VOLTAGE_K = 0.4666667
TEMP_VOLTAGE_B = -9.0
TEMP_MAPPING_MODE = 0


def hex_to_float32(hex_u32: str) -> float:
    u = int(hex_u32, 16)
    return struct.unpack("<f", struct.pack("<I", u))[0]


def parse_line(line: str) -> str:
    parts = [p.strip() for p in line.strip().split(",")]
    if len(parts) != 4:
        raise ValueError("expected 4 comma-separated hex fields")
    
    print(f"{time.time():.3f}  {parts}")

    t_hex, rpm_hex, v_hex, tv_hex = parts

    t_c = hex_to_float32(t_hex)
    rpm = int(rpm_hex, 16)
    v_act = hex_to_float32(v_hex)
    v_tgt = hex_to_float32(tv_hex)

    if TEMP_MAPPING_MODE == 0:
        v_map = TEMP_VOLTAGE_K * t_c + TEMP_VOLTAGE_B
    else:
        n = (t_c - TEMP_MIN) / (TEMP_MAX - TEMP_MIN)
        if n < 0.0:
            n = 0.0
        if n > 1.0:
            n = 1.0
        v_map = VOUT_MIN + (VOUT_MAX - VOUT_MIN) * n * n

    if v_map < VOUT_MIN:
        v_map = VOUT_MIN
    if v_map > VOUT_MAX:
        v_map = VOUT_MAX

    return (
        f"T={t_c:.2f} C, "
        f"RPM={rpm}, "
        f"AV={v_act:.3f} V, "
        f"TV={v_tgt:.3f} V, "
        f"MAP={v_map:.3f} V, "
        f"AV-TV={v_act - v_tgt:+.3f} V, "
        f"AV-MAP={v_act - v_map:+.3f} V"
    )


def main() -> int:
    parser = argparse.ArgumentParser(description="Decode CH552 main2 telemetry")
    parser.add_argument("lines", nargs="*", help="Telemetry line(s) to decode")
    parser.add_argument("--port", default="COM3", help="Serial port, default COM3")
    parser.add_argument("--baud", type=int, default=115200, help="Baud rate, default 115200")
    parser.add_argument(
        "--serial",
        action="store_true",
        help="Read from serial port continuously (default uses --port)",
    )
    parser.add_argument(
        "--raw",
        action="store_true",
        help="Print raw line before decoded text",
    )
    args = parser.parse_args()

    if args.lines:
        for arg in args.lines:
            try:
                print(parse_line(arg))
            except Exception as exc:
                print(f"[ERR] {arg!r}: {exc}")
        return 0

    if args.serial:
        try:
            import serial  # type: ignore
        except Exception:
            print("[ERR] Missing dependency: pyserial")
            print("Install with: pip install pyserial")
            return 1

        print(f"Opening {args.port} @ {args.baud} ... (Ctrl+C to exit)")
        try:
            with serial.Serial(args.port, args.baud, timeout=1) as ser:
                while True:
                    raw = ser.readline()
                    if not raw:
                        continue
                    line = raw.decode("ascii", errors="ignore").strip()
                    if not line:
                        continue
                    try:
                        decoded = parse_line(line)
                        if args.raw:
                            print(f"{line} -> {decoded}")
                        else:
                            print(decoded)
                    except Exception as exc:
                        if args.raw:
                            print(f"{line} -> [ERR] {exc}")
        except KeyboardInterrupt:
            return 0
        except Exception as exc:
            print(f"[ERR] serial read failed: {exc}")
            return 1

    print("Paste telemetry lines (Ctrl+C to exit):")
    try:
        while True:
            line = sys.stdin.readline()
            if not line:
                break
            line = line.strip()
            if not line:
                continue
            try:
                print(parse_line(line))
            except Exception as exc:
                print(f"[ERR] {exc}")
    except KeyboardInterrupt:
        pass

    return 0


if __name__ == "__main__":
    while True:
        if main():
           time.sleep(1)
