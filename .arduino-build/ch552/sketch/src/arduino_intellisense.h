#line 1 "C:\\Users\\tonyp\\Downloads\\ch552-turbo-fan-ctrl\\src\\arduino_intellisense.h"
#ifndef ARDUINO_INTELLISENSE_H
#define ARDUINO_INTELLISENSE_H

#include <stdint.h>
#include <stddef.h>
#include <string>
#include <algorithm>
#include <cctype>
#include <cstdlib>

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

class String {
public:
    String() = default;
    String(const char* s) : data_(s ? s : "") {}
    String(const std::string& s) : data_(s) {}

    size_t length() const { return data_.size(); }
    const char* c_str() const { return data_.c_str(); }

    char operator[](size_t i) const { return data_[i]; }

    String& operator=(const char* s) {
        data_ = (s ? s : "");
        return *this;
    }

    String& operator+=(char c) {
        data_.push_back(c);
        return *this;
    }

    bool operator==(const char* rhs) const {
        return data_ == (rhs ? rhs : "");
    }

    bool operator==(const String& rhs) const {
        return data_ == rhs.data_;
    }

    bool startsWith(const char* prefix) const {
        std::string p = prefix ? prefix : "";
        return data_.rfind(p, 0) == 0;
    }

    bool startsWith(const String& prefix) const {
        return data_.rfind(prefix.data_, 0) == 0;
    }

    String substring(size_t start) const {
        if (start >= data_.size()) return String("");
        return String(data_.substr(start));
    }

    String substring(size_t start, size_t end) const {
        if (start >= data_.size()) return String("");
        if (end > data_.size()) end = data_.size();
        if (end < start) end = start;
        return String(data_.substr(start, end - start));
    }

    int indexOf(char ch, size_t from = 0) const {
        if (from >= data_.size()) return -1;
        size_t pos = data_.find(ch, from);
        return (pos == std::string::npos) ? -1 : static_cast<int>(pos);
    }

    int indexOf(const String& needle, size_t from = 0) const {
        if (from >= data_.size()) return -1;
        size_t pos = data_.find(needle.data_, from);
        return (pos == std::string::npos) ? -1 : static_cast<int>(pos);
    }

    float toFloat() const {
        return static_cast<float>(std::atof(data_.c_str()));
    }

    long toInt() const {
        return std::atol(data_.c_str());
    }

    void trim() {
        auto notSpace = [](unsigned char c) { return !std::isspace(c); };
        auto beginIt = std::find_if(data_.begin(), data_.end(), notSpace);
        auto endIt = std::find_if(data_.rbegin(), data_.rend(), notSpace).base();
        if (beginIt >= endIt) {
            data_.clear();
        } else {
            data_ = std::string(beginIt, endIt);
        }
    }

private:
    std::string data_;
};

unsigned long millis(void);
void delay(unsigned long ms);
void delayMicroseconds(uint16_t us);

void pinMode(uint8_t pin, uint8_t mode);
void digitalWrite(uint8_t pin, uint8_t val);
uint8_t digitalRead(uint8_t pin);
uint8_t analogRead(uint8_t pin);
void analogWrite(uint8_t pin, uint16_t val);

void attachInterrupt(uint8_t interruptNum, void (*userFunc)(void), int mode);
uint8_t digitalPinToInterrupt(uint8_t pin);
void noInterrupts(void);
void interrupts(void);

uint8_t USBSerial_write(char c);
uint8_t USBSerial_available(void);
char USBSerial_read(void);

#endif