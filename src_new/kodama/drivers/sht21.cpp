#include "sht21.h"
#include <kodama.h>



//temperature and humidity sensor
#define SHT21_ADDRESS	                          0x80

#define SHT21_TRIGGER_T_MEASUREMENT_POOL 	      0xF3
#define SHT21_TRIGGER_RH_MEASUREMENT_POOL 	    0xF5
#define SHT21_WRITE_USER_REGISTER 			        0xE6
#define SHT21_SOFT_RESET					              0xFE


CSHT21::CSHT21()
{
  temperature = 0;
  humidity = 0;
}

CSHT21::~CSHT21()
{

}

void CSHT21::read()
{
  temperature = -47 + (((uint32_t)176*(uint32_t)read_(SHT21_TRIGGER_T_MEASUREMENT_POOL))>>16);
  humidity = -6 + (((uint32_t)125*(uint32_t)read_(SHT21_TRIGGER_RH_MEASUREMENT_POOL))>>16);
}



unsigned int CSHT21::read_(unsigned char command)
{
	unsigned int res;

	i2c.start();
	i2c.write(SHT21_ADDRESS);	// slave address, write command
	i2c.write(command);
	delay(100);

	i2c.stop();

	unsigned char i = 100;
	do
	{
		i2c.start();
		delay(1000); //delay 1ms
    i--;
		if(i == 0)
      break;
	}
	while( i2c.write(SHT21_ADDRESS|0x01) == NO_I2C_ACK );

	if (i == 20)
	{
		return 1000;
	}

	res = (unsigned int)i2c.read(1) << 8;
	res|= i2c.read(1);
	i2c.read(0);

	i2c.stop();

	return res;
}

void CSHT21::delay(unsigned int loops)
{
  while (loops--)
    __asm("nop");
}
