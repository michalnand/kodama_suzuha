#ifndef _I2C_H_
#define _I2C_H_

#include <interfaces.h>

class CI2C: public CI2C_Interface
{
  public:
    CI2C(unsigned int gpio, unsigned int scl_pin, unsigned int sda_pin);
    ~CI2C();

    char init();

    void start();
    void stop();

    void write(unsigned char data);
    unsigned char read();

    void write_register(unsigned char device_address, unsigned char register_address, unsigned char data);

    unsigned char read_register(unsigned char device_address, unsigned char register_address);
    void write_register_multi(unsigned char device_address, unsigned char register_address, unsigned char *buffer, unsigned int buffer_length);
};


extern class CI2C i2c;

#endif
