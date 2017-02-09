#ifndef _RGB_I2C_H_
#define _RGB_I2C_H_

#include "gpio.h"

#define RGB_SENSOR_COUNT     4


#define RGB_SCL              13
#define RGB_SCL_GPIO         TGPIOC

#define RGB_SDA0             4
#define RGB_SDA0_GPIO        TGPIOA

#define RGB_SDA1             5
#define RGB_SDA1_GPIO        TGPIOA

#define RGB_SDA2             6
#define RGB_SDA2_GPIO        TGPIOA

#define RGB_SDA3             7
#define RGB_SDA3_GPIO        TGPIOA

struct sRGBResult
{
  int16_t r, g, b, a;
  int16_t proximity;
};

class CRGB_I2C
{
  public:
    unsigned char read_result[RGB_SENSOR_COUNT];
    struct sRGBResult result[RGB_SENSOR_COUNT];
    struct sRGBResult result_calibration[RGB_SENSOR_COUNT];


    TGpio<TGPIOA, 3, GPIO_MODE_OUT>   white_led;


    TGpio<RGB_SCL_GPIO, RGB_SCL, GPIO_MODE_IN_FLOATING>   scl;

    TGpio<RGB_SDA0_GPIO, RGB_SDA0, GPIO_MODE_IN_FLOATING> sda0;
    TGpio<RGB_SDA1_GPIO, RGB_SDA1, GPIO_MODE_IN_FLOATING> sda1;
    TGpio<RGB_SDA2_GPIO, RGB_SDA2, GPIO_MODE_IN_FLOATING> sda2;
    TGpio<RGB_SDA3_GPIO, RGB_SDA3, GPIO_MODE_IN_FLOATING> sda3;


  public:
    CRGB_I2C();
    ~CRGB_I2C();

    uint16_t init();
    void read(bool calibration = false);

  protected:
    void write_reg(unsigned char dev_adr, unsigned char reg_adr, unsigned char value);

    void write(unsigned char b);

    //fill read_result array with readed byte
    void read_i2c(unsigned char ack);

    void start();
    void stop();

    void set_high_scl();
    void set_low_scl();
    void set_high_sda();
    void set_low_sda();

    uint16_t read_sda();
};


#endif
