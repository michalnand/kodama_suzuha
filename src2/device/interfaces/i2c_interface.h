#ifndef _I2C_INTERFACE_H_
#define _I2C_INTERFACE_H_

class CI2C_Interface
{
  public:
    CI2C_Interface(unsigned int gpio, unsigned int scl_pin, unsigned int sda_pin)
    {
      (void)gpio;
      (void)scl_pin;
      (void)sda_pin;
    }

    ~CI2C_Interface()
    {

    }

    char init()
    {
      return 0;
    }

    void start()
    {

    }

    void stop()
    {

    }

    void write(unsigned char data)
    {
      (void)data;
    }

    unsigned char read()
    {
      return 0;
    }

    void write_register(unsigned char device_address, unsigned char register_address, unsigned char data)
    {
      (void)device_address;
      (void)register_address;
      (void)data;
    }

    unsigned char read_register(unsigned char device_address, unsigned char register_address)
    {
      (void)device_address;
      (void)register_address;

      return 0;
    }

    void write_register_multi(unsigned char device_address, unsigned char register_address, unsigned char *buffer, unsigned int buffer_length)
    {
      (void)device_address;
      (void)register_address;
      (void)buffer;
      (void)buffer_length;
    }
};



#endif
