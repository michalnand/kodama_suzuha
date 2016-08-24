#ifndef _I2C_H_
#define _I2C_H_

#include <stdint.h>


#define RCC_AHBPeriph_GPIO_I2C RCC_AHBPeriph_GPIOB
#define I2C_GPIO    GPIOB

#define SCL     	6
#define SDA     	7

#define NO_I2C_ACK 0
#define OK_I2C_ACK 1


    void i2c_init();

    void i2cStart();
    void i2cStop();

    int i2cWrite(uint8_t a);
    uint8_t i2cRead(uint8_t  ack);

    void i2c_write_reg(uint8_t dev_adr, uint8_t reg_adr, uint8_t value);
    uint8_t i2c_read_reg(uint8_t dev_adr, uint8_t reg_adr);

    void i2c_delay();
    void SetLowSDA();
    void SetHighSDA();

    void SetLowSCL();
    void SetHighSCL();


#endif
