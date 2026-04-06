#line 1 "C:\\Users\\tonyp\\Downloads\\ch552-turbo-fan-ctrl\\src\\serial_compat.h"
#ifndef SERIAL_COMPAT_H
#define SERIAL_COMPAT_H

#include "arduino_compat.h"

void serial_begin(unsigned long baud);
int serial_available(void);
int serial_read(void);
size_t serial_write(char c);

void serial_print_str(const char* text);
void serial_print_int(int value);
void serial_print_uint(unsigned long value);
void serial_print_uint_base(unsigned long value, int base);
void serial_print_float(float value, int digits);

void serial_println(void);
void serial_println_str(const char* text);
void serial_println_int(int value);
void serial_println_uint(unsigned long value);
void serial_println_float(float value, int digits);

#endif
