#include "hmc5883.h"
#include <kodama.h>

#define HMC5883_ADDRESS         0x3C

#define HMC5883_CONFIG_A        0x00
#define HMC5883_CONFIG_B        0x01
#define HMC5883_MODE            0x02

#define HMC5883_OUT_X_MSB       0x03
#define HMC5883_OUT_X_LSB       0x04
#define HMC5883_OUT_Z_MSB       0x05
#define HMC5883_OUT_Z_LSB       0x06
#define HMC5883_OUT_Y_MSB       0x07
#define HMC5883_OUT_Y_LSB       0x08


#define HMC5883_ID              0x0A
#define HMC5883_ID_VALUE        (unsigned char)((1<<6)|(1<<3))


CHMC5883::CHMC5883()
{
  result.x = 0;
  result.y = 0;
  result.z = 0;


  //30Hz data rate
  i2c.write_reg(HMC5883_ADDRESS, HMC5883_CONFIG_A, (1<<4)|(1<<2));
  //i2c.write_reg(HMC5883_ADDRESS, HMC5883_CONFIG_A, (1<<4)|(1<<3));

  //maximal gain
  i2c.write_reg(HMC5883_ADDRESS, HMC5883_CONFIG_B, 0);

  //continuos mode
  i2c.write_reg(HMC5883_ADDRESS, HMC5883_MODE, 0);
}

CHMC5883::~CHMC5883()
{

}


void CHMC5883::read()
{
  i2c.start();

  i2c.write(HMC5883_ADDRESS);
  i2c.write(HMC5883_OUT_X_MSB);

  i2c.stop();


  i2c.start();
  i2c.write(HMC5883_ADDRESS|0x01);
  result.x = ((uint16_t)i2c.read(1)) << 8;
  result.x|= ((uint16_t)i2c.read(1));

  result.z = ((uint16_t)i2c.read(1)) << 8;
  result.z|= ((uint16_t)i2c.read(1));

  result.y = ((uint16_t)i2c.read(1)) << 8;
  result.y|= ((uint16_t)i2c.read(0));
  i2c.stop();
}
