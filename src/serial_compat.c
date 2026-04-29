#include "serial_compat.h"
#include "config.h"

#if FEATURE_USB_PROTOCOL || FEATURE_VERBOSE_LOG

void serial_begin(unsigned long baud) {
    Serial.begin(baud);
}

int serial_available(void) {
    return Serial.available();
}

int serial_read(void) {
    return Serial.read();
}

size_t serial_write(char c) {
    return (size_t)Serial.write((uint8_t)c);
}

void serial_print_str(const char* text) {
    if (!text) return;
    Serial.print(text);
}

void serial_print_int(int value) {
    Serial.print(value);
}

void serial_print_uint(unsigned long value) {
    Serial.print(value);
}

void serial_print_uint_base(unsigned long value, int base) {
    Serial.print(value, base);
}

void serial_print_float(float value, int digits) {
    if (digits < 0) digits = 0;
    if (digits > 6) digits = 6;
    Serial.print(value, digits);
}

void serial_println(void) {
    Serial.print("\r\n");
}

void serial_println_str(const char* text) {
    serial_print_str(text);
    serial_println();
}

void serial_println_int(int value) {
    Serial.print(value);
    serial_println();
}

void serial_println_uint(unsigned long value) {
    Serial.print(value);
    serial_println();
}

void serial_println_float(float value, int digits) {
    serial_print_float(value, digits);
    serial_println();
}
#else

void serial_begin(unsigned long baud) {
    (void)baud;
}

int serial_available(void) {
    return 0;
}

int serial_read(void) {
    return -1;
}

size_t serial_write(char c) {
    (void)c;
    return (size_t)1;
}

void serial_print_str(const char* text) {
    (void)text;
}

void serial_print_int(int value) {
    (void)value;
}

void serial_print_uint(unsigned long value) {
    (void)value;
}

void serial_print_uint_base(unsigned long value, int base) {
    (void)value;
    (void)base;
}

void serial_print_float(float value, int digits) {
    (void)value;
    (void)digits;
}

void serial_println(void) {
}

void serial_println_str(const char* text) {
    (void)text;
}

void serial_println_int(int value) {
    (void)value;
}

void serial_println_uint(unsigned long value) {
    (void)value;
}

void serial_println_float(float value, int digits) {
    (void)value;
    (void)digits;
}

#endif
