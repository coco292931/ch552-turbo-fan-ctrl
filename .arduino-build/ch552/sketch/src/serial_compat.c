#line 1 "C:\\Users\\tonyp\\Downloads\\ch552-turbo-fan-ctrl\\src\\serial_compat.c"
#include "serial_compat.h"
#include "config.h"

#if FEATURE_USB_PROTOCOL || FEATURE_VERBOSE_LOG

#ifdef __SDCC
#define SDCC_REENTRANT __reentrant
#else
#define SDCC_REENTRANT
#endif

void serial_begin(unsigned long baud) {
    (void)baud;
}

int serial_available(void) {
    return (int)USBSerial_available();
}

int serial_read(void) {
    return (int)USBSerial_read();
}

size_t serial_write(char c) {
    return (size_t)USBSerial_write(c);
}

static void writeUnsigned(unsigned long value, int base) SDCC_REENTRANT {
    const char digits[] = "0123456789ABCDEF";
    unsigned long divisor = 1;
    unsigned long digit;
    bool started = false;

    if (base < 2 || base > 16) {
        base = 10;
    }

    if (value == 0) {
        USBSerial_write('0');
        return;
    }

    while ((divisor <= (0xFFFFFFFFUL / (unsigned long)base)) &&
           ((value / divisor) >= (unsigned long)base)) {
        divisor *= (unsigned long)base;
    }

    while (divisor > 0) {
        digit = value / divisor;
        value %= divisor;

        if (digit != 0 || started || divisor == 1) {
            USBSerial_write(digits[digit]);
            started = true;
        }

        divisor /= (unsigned long)base;
    }
}

void serial_print_str(const char* text) {
    if (!text) return;
    while (*text) {
        USBSerial_write(*text++);
    }
}

void serial_print_int(int value) {
    if (value < 0) {
        USBSerial_write('-');
        writeUnsigned((unsigned long)(-value), 10);
    } else {
        writeUnsigned((unsigned long)value, 10);
    }
}

void serial_print_uint(unsigned long value) {
    writeUnsigned(value, 10);
}

void serial_print_uint_base(unsigned long value, int base) {
    writeUnsigned(value, base);
}

void serial_print_float(float value, int digits) {
    unsigned long scale = 1;
    unsigned long scaled;
    unsigned long int_part;
    unsigned long frac_part;
    int i;

    if (value < 0.0f) {
        USBSerial_write('-');
        value = -value;
    }

    if (digits < 0) {
        digits = 0;
    }
    if (digits > 3) {
        digits = 3;
    }

    for (i = 0; i < digits; i++) {
        scale *= 10UL;
    }

    scaled = (unsigned long)(value * (float)scale + 0.5f);
    int_part = scaled / scale;
    frac_part = scaled % scale;

    serial_print_uint(int_part);

    if (digits > 0) {
        USBSerial_write('.');

        scale /= 10UL;
        while (scale > 0) {
            USBSerial_write((char)('0' + (frac_part / scale) % 10UL));
            scale /= 10UL;
        }
    }
}

void serial_println(void) {
    USBSerial_write('\r');
    USBSerial_write('\n');
}

void serial_println_str(const char* text) {
    serial_print_str(text);
    serial_println();
}

void serial_println_int(int value) {
    serial_print_int(value);
    serial_println();
}

void serial_println_uint(unsigned long value) {
    serial_print_uint(value);
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
