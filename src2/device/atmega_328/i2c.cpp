#include "i2c.h"

#include <avr/io.h>

#define SCL_PIN     (1<<0)
#define SDA_PIN     (1<<1)

class CI2C i2c(PORTB, SCL_PIN, SDA_PIN);



CI2C::CI2C(unsigned int gpio, unsigned int scl_pin, unsigned int sda_pin):
      CI2C_Interface(gpio, scl_pin, sda_pin)
{

}

CI2C::~CI2C()
{

}

char CI2C::init()
{
  return 0;
}

void CI2C::start()
{

}

void CI2C::stop()
{

}

void CI2C::write(unsigned char data)
{
  (void)data;
}

unsigned char CI2C::read()
{
  return 0;
}

void CI2C::write_register(unsigned char device_address, unsigned char register_address, unsigned char data)
{
  (void)device_address;
  (void)register_address;
  (void)data;
}

unsigned char CI2C::read_register(unsigned char device_address, unsigned char register_address)
{
  (void)device_address;
  (void)register_address;
  return 0;
}

void CI2C::write_register_multi(unsigned char device_address, unsigned char register_address, unsigned char *buffer, unsigned int buffer_length)
{
  (void)device_address;
  (void)register_address;
  (void)buffer;
  (void)buffer_length;
}
