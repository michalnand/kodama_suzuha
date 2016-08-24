#include "sensors.h"
#include <device.h>


CSensors::CSensors()
{
  sensors_init();
}

CSensors::~CSensors()
{

}

int32_t CSensors::sensors_init()
{
  unsigned int i;

  for (i = 0; i < RGB_SENSORS_COUNT; i++)
	{
		rgb_result.r[i] = 0;
		rgb_result.g[i] = 0;
		rgb_result.b[i] = 0;

		rgb_result.proximity[i] = 0;
		rgb_result.ambient[i] = 0;


    rgb_calibration.r[i] = 0;
    rgb_calibration.g[i] = 0;
    rgb_calibration.b[i] = 0;

    rgb_calibration.proximity[i] = 0;
    rgb_calibration.ambient[i] = 0;


    rgb_result.r_normalised[i] = 0;
    rgb_result.g_normalised[i] = 0;
    rgb_result.b_normalised[i] = 0;
	}

  //white led on
  GPIOA->BRR = (1<<3);

	rgb_i2c_init();

	rgb_i2c_write_reg(RGB_ADDRESS, RGB_COMMAND|RGB_ATIME, 0xFF); 			/*2.4ms time*/
	rgb_i2c_write_reg(RGB_ADDRESS, RGB_COMMAND|RGB_WTIME, 0xFF); 			/*2.4ms time*/

	rgb_i2c_write_reg(RGB_ADDRESS, RGB_COMMAND|RGB_CONFIG, 0); 				/*dont wait long*/
	rgb_i2c_write_reg(RGB_ADDRESS, RGB_COMMAND|RGB_ENABLE, (1<<1)|(1<<0));	/*power on, RGBC enable*/

	/*
		proximity sensor setup
		100mA LED current
		use IR diode
		60x GAIN
	*/
	rgb_i2c_write_reg(RGB_ADDRESS, RGB_COMMAND|RGB_CONTROL, (1<<5)|(1<<0)|(1<<1));

	rgb_read();

	/*check correct sensor bus ID*/
	u8 tmp[RGB_SENSORS_COUNT];
	int32_t rgb_error_result = 0;
	rgb_i2c_read_reg(RGB_ADDRESS, RGB_COMMAND|RGB_ID, tmp);

	for (i = 0; i < RGB_SENSORS_COUNT; i++)
	{
		if (tmp[i] != RGB_ID_VALUE)
			rgb_error_result|=(1<<i);
	}


  unsigned int calibration_count = 4;
  for (i = 0; i < calibration_count; i++)
    rgb_read(1);


  for (i = 0; i < RGB_SENSORS_COUNT; i++)
  {
    rgb_calibration.r[i]/= calibration_count;
    rgb_calibration.g[i]/= calibration_count;
    rgb_calibration.b[i]/= calibration_count;

    rgb_calibration.proximity[i]/= calibration_count;
    rgb_calibration.ambient[i]/= calibration_count;
  }

  rgb_read();


  return -rgb_error_result;
}

void CSensors::sensors_sleep()
{
  //white led off
  GPIOA->BSRR = (1<<3);

  //power off APDS, TODO
  rgb_i2c_write_reg(RGB_ADDRESS, RGB_COMMAND|RGB_ENABLE, 0);
}


void CSensors::rgb_read(unsigned char calibration)
{
  u32 i;

	rgb_i2cStart();
	rgb_i2cWrite(RGB_ADDRESS);
	rgb_i2cWrite(RGB_COMMAND|RGB_CDATAL|(1<<5));

	rgb_i2cStart();
	rgb_i2cWrite(RGB_ADDRESS|0x01);

	rgb_i2cRead(1, rgb_raw);
	for (i = 0; i < RGB_SENSORS_COUNT; i++)
		rgb_result.ambient[i] = rgb_raw[i];

	rgb_i2cRead(1, rgb_raw);
	for (i = 0; i < RGB_SENSORS_COUNT; i++)
		rgb_result.ambient[i]|= ((u16)rgb_raw[i])<<8;

	rgb_i2cRead(1, rgb_raw);
	for (i = 0; i < RGB_SENSORS_COUNT; i++)
		rgb_result.r[i] = rgb_raw[i];

	rgb_i2cRead(1, rgb_raw);
	for (i = 0; i < RGB_SENSORS_COUNT; i++)
		rgb_result.r[i]|= ((u16)rgb_raw[i])<<8;

	rgb_i2cRead(1, rgb_raw);
	for (i = 0; i < RGB_SENSORS_COUNT; i++)
		rgb_result.g[i] = rgb_raw[i];

	rgb_i2cRead(1, rgb_raw);
	for (i = 0; i < RGB_SENSORS_COUNT; i++)
		rgb_result.g[i]|= ((u16)rgb_raw[i])<<8;

	rgb_i2cRead(1, rgb_raw);
	for (i = 0; i < RGB_SENSORS_COUNT; i++)
		rgb_result.b[i] = rgb_raw[i];

	rgb_i2cRead(1, rgb_raw);
	for (i = 0; i < RGB_SENSORS_COUNT; i++)
		rgb_result.b[i]|= ((u16)rgb_raw[i])<<8;


	rgb_i2cRead(1, rgb_raw);
	for (i = 0; i < RGB_SENSORS_COUNT; i++)
		rgb_result.proximity[i] = rgb_raw[i];

	rgb_i2cRead(0, rgb_raw);
	for (i = 0; i < RGB_SENSORS_COUNT; i++)
		rgb_result.proximity[i]|= ((u16)rgb_raw[i])<<8;

	rgb_i2cStop();


  if (calibration != 0)
  {
    for (i = 0; i < RGB_SENSORS_COUNT; i++)
    {
      rgb_calibration.r[i]+= rgb_result.r[i];
      rgb_calibration.g[i]+= rgb_result.g[i];
      rgb_calibration.b[i]+= rgb_result.b[i];

      rgb_calibration.proximity[i]+= rgb_result.proximity[i];
      rgb_calibration.ambient[i]+= rgb_result.ambient[i];
    }
  }
  else
  {
    for (i = 0; i < RGB_SENSORS_COUNT; i++)
    {

      __disable_irq();

      rgb_result.r[i]-= rgb_calibration.r[i];
      rgb_result.g[i]-= rgb_calibration.g[i];
      rgb_result.b[i]-= rgb_calibration.b[i];

      rgb_result.proximity[i]-= rgb_calibration.proximity[i];
      rgb_result.ambient[i]-= rgb_calibration.ambient[i];

      __enable_irq();

      int32_t sum = rgb_result.r[i] + rgb_result.g[i] + rgb_result.b[i];

      if (sum != 0)
      {
        rgb_result.r_normalised[i] = (255*rgb_result.r[i])/sum;
        rgb_result.g_normalised[i] = (255*rgb_result.g[i])/sum;
        rgb_result.b_normalised[i] = (255*rgb_result.b[i])/sum;
      }


    }
  }
}

struct sRGBResult *CSensors::get_rgb_result()
{
  return &rgb_result;
}
