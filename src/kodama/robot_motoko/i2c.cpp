#include "i2c.h"
#include <device.h>

CI2C::CI2C()
{
  i2c_init();
}

CI2C::~CI2C()
{

}

void CI2C::i2c_init()
{
    RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIO_I2C, ENABLE);

    GPIO_InitTypeDef GPIO_InitStruct;

    GPIO_InitStruct.GPIO_Pin = (1<<SDA)|(1<<SCL);
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
    GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;//this sets the GPIO modules clock speed
    GPIO_InitStruct.GPIO_OType = GPIO_OType_OD; // this sets the pin type to open drain
    GPIO_InitStruct.GPIO_PuPd = GPIO_PuPd_NOPULL; // this disables resistor
    GPIO_Init(I2C_GPIO, &GPIO_InitStruct);

    SetHighSCL();
    SetLowSDA();
    SetHighSDA();
}



void CI2C::i2cStart()
{
    SetHighSCL();
    SetHighSDA();

    SetHighSCL();
    SetLowSDA();

    SetLowSCL();
    SetHighSDA();
}


void CI2C::i2cStop()
{
    SetLowSCL();
    SetLowSDA();

    SetHighSCL();
    SetLowSDA();

    SetHighSCL();
    SetHighSDA();
}



int CI2C::i2cWrite(uint8_t a)
{
    uint8_t  i;
    uint8_t  return_ack;

    for (i=0; i<8; i++)
    {
        SetLowSCL();

        if (a & 0x80)
            SetHighSDA();
        else
            SetLowSDA();

        SetHighSCL();
        a <<= 1;
    }

    SetLowSCL();
    SetHighSDA();
    SetHighSCL();


    if (I2C_GPIO->IDR&(1<<SDA))
        return_ack = NO_I2C_ACK;
    else
        return_ack = OK_I2C_ACK;

    SetLowSCL();

    i2c_delay();

    return(return_ack);
}


uint8_t CI2C::i2cRead(uint8_t  ack)
{
    uint8_t  i;
    uint8_t  c = 0x00;

    SetLowSCL();

    for (i = 0; i < 8; i++)
    {
        c = c << 1;
        SetHighSCL();

        if (I2C_GPIO->IDR&(1<<SDA))
            c = c | 0x01;

        SetLowSCL();
    }


   if (ack > 0)
   {
     //0
      SetLowSDA();
      SetHighSCL();
      SetLowSCL();
   }
   else
   {
     //1
     SetHighSDA();
     SetHighSCL();
     SetLowSCL();
     SetLowSDA();
   }


    return (c);
}


void CI2C::i2c_write_reg(uint8_t dev_adr, uint8_t reg_adr, uint8_t value)
{
    i2cStart();
    i2cWrite(dev_adr);  /*slave address, write command*/
    i2cWrite(reg_adr);  /*send reg address*/
    i2cWrite(value);
    i2cStop();
}

uint8_t CI2C::i2c_read_reg(uint8_t dev_adr, uint8_t reg_adr)
{
    uint8_t res;

    i2cStart();
    i2cWrite(dev_adr);  /*slave address, write command*/
    i2cWrite(reg_adr);  /*send reg address*/

    i2cStart();
    i2cWrite(dev_adr|0x01); /*slave address, read command*/
    res = i2cRead(0);   /*read data*/
    i2cStop();

    return res;
}



void CI2C::i2c_delay()
{
  uint8_t loops = 4;
  while (loops--)
      __asm("nop");
}

void CI2C::SetLowSDA()
{

    GPIO_InitTypeDef GPIO_InitStruct;

    GPIO_InitStruct.GPIO_Pin = (1<<SDA);
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
    GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;//this sets the GPIO modules clock speed
    GPIO_InitStruct.GPIO_OType = GPIO_OType_OD; // this sets the pin type to open drain
    GPIO_InitStruct.GPIO_PuPd = GPIO_PuPd_NOPULL; // this disables resistor
    GPIO_Init(I2C_GPIO, &GPIO_InitStruct);

    /*
    I2C_GPIO->OTYPER &= ~((GPIO_OTYPER_OT_0) << ((uint16_t)SDA));
    I2C_GPIO->OTYPER |= (uint16_t)(((uint16_t)GPIO_OType_OD) << ((uint16_t)SDA));

    I2C_GPIO->MODER  &= ~(GPIO_MODER_MODER0 << (SDA * 2));
    I2C_GPIO->MODER |= (((uint32_t)GPIO_Mode_IN) << (SDA * 2));
    */
    I2C_GPIO->BRR = (1<<SDA);

    i2c_delay();
}

void CI2C::SetHighSDA()
{
/*
    GPIO_InitTypeDef GPIO_InitStruct;

    GPIO_InitStruct.GPIO_Pin = (1<<SDA);
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN;
    GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;//this sets the GPIO modules clock speed
    GPIO_InitStruct.GPIO_OType = GPIO_OType_OD; // this sets the pin type to open drain
    GPIO_InitStruct.GPIO_PuPd = GPIO_PuPd_NOPULL; // this disables resistor
    GPIO_Init(I2C_GPIO, &GPIO_InitStruct);
*/

    I2C_GPIO->MODER  &= ~(GPIO_MODER_MODER0 << (SDA * 2));
    I2C_GPIO->MODER |= (((uint32_t)GPIO_Mode_IN) << (SDA * 2));


    I2C_GPIO->BSRR = (1<<SDA);

    i2c_delay();
}

void CI2C::SetLowSCL()
{
    I2C_GPIO->BRR = (1<<SCL);
    i2c_delay();
}

void CI2C::SetHighSCL()
{
    I2C_GPIO->BSRR = (1<<SCL);
    i2c_delay();
}
