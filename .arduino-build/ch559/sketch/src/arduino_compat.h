#line 1 "C:\\Users\\tonyp\\Downloads\\ch552-turbo-fan-ctrl\\src\\arduino_compat.h"
#ifndef ARDUINO_COMPAT_H
#define ARDUINO_COMPAT_H

#if defined(__INTELLISENSE__) || !defined(ARDUINO)

#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#ifndef __xdata
#define __xdata
#endif

#ifndef __data
#define __data
#endif

#define HIGH 0x1
#define LOW 0x0

#define INPUT 0x0
#define OUTPUT 0x1
#define INPUT_PULLUP 0x2
#define OUTPUT_OD 0x03

#define FALLING 1

#define DEC 10
#define HEX 16
#define OCT 8
#define BIN 2

#ifdef __cplusplus
extern "C" {
#endif

unsigned long millis(void);
void delay(unsigned long ms);
void delayMicroseconds(uint16_t us);

void pinMode(uint8_t pin, uint8_t mode);
void digitalWrite(uint8_t pin, uint8_t val);
uint8_t digitalRead(uint8_t pin);
#ifdef CH559
uint16_t analogRead(uint8_t pin);
#else
uint8_t analogRead(uint8_t pin);
#endif
void analogWrite(uint8_t pin, uint16_t val);

void attachInterrupt(uint8_t interruptNum, void (*userFunc)(void), uint8_t mode);
void detachInterrupt(uint8_t interruptNum);

#ifndef interrupts
#define interrupts() do {} while (0)
#endif

#ifndef noInterrupts
#define noInterrupts() do {} while (0)
#endif

uint8_t USBSerial_write(char c);
uint8_t USBSerial_available(void);
char USBSerial_read(void);

#ifdef __cplusplus
}
#endif

#else

#include <Arduino.h>

#endif

#endif
