#include "imu.h"
#include "lsm9ds0_regs.h"


CIMU::CIMU()
{
  imu_init();
}

CIMU::~CIMU()
{

}

int32_t CIMU::imu_init()
{
  uint8_t tmp;

  gx_ofs = 0;
  gy_ofs = 0;
  gz_ofs = 0;

  i2c_init();


  uint32_t loops = 10000;
  while (loops--)
    __asm("nop");

  //check gyro who am I register
  tmp = i2c_read_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_WHO_AM_I_G);
  if ( tmp != ((1<<7)|(1<<6)|(1<<4)|(1<<2)) )
      return -1;

  //check magnetometer and accelerometer who am I register
  tmp = i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_WHO_AM_I_XM);
  if (tmp != ((1<<6)|(1<<3)|(1<<0)) )
      return -2;


  //gyrosocpe init
  //enable all axis, power up, maximum data output rate - 100Hz
  i2c_write_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_CTRL_REG1_G, (1<<7)|(1<<6)|(1<<5)|(1<<4)|
                                                          (1<<3)|(1<<2)|(1<<1)|(1<<0));

  //2000DPS range
  //i2c_write_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_CTRL_REG4_G, (1<<5));

  //500DPS range
  i2c_write_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_CTRL_REG4_G, (1<<4));


  //accelerometer init
  i2c_write_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_CTRL_REG0_XM, 0);

  //enable all axis, data rate 100Hz
  i2c_write_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_CTRL_REG1_XM, (1<<6)|(1<<5)|(1<<2)|(1<<1)|(1<<0));

  //2g full range
  i2c_write_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_CTRL_REG2_XM, 0);

  //magnetometer init
  // enable temperature sensor, high resolution, 100Hz outout rate
  i2c_write_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_CTRL_REG5_XM, (1<<7)|(1<<6)|(1<<5)|(1<<4)|(1<<2));

  //2 guass range
  i2c_write_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_CTRL_REG6_XM, 0);

  //continuous normal mode
  i2c_write_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_CTRL_REG7_XM, 1<<7);


  loops = 100000;
  while (loops--)
    __asm("nop");

  imu_read();


  uint32_t i, measurments = 100;

  int32_t gx_ofs_sum = 0;
  int32_t gy_ofs_sum = 0;
  int32_t gz_ofs_sum = 0;

  for (i = 0; i < measurments; i++)
  {
      loops = 100;
      while (loops--)
        __asm("nop");

      imu_read();
      gx_ofs_sum+= gx;
      gy_ofs_sum+= gy;
      gz_ofs_sum+= gz;
  }

  gx_ofs = gx_ofs_sum / (int32_t)measurments;
  gy_ofs = gy_ofs_sum / (int32_t)measurments;
  gz_ofs = gz_ofs_sum / (int32_t)measurments;

  ax = 0;
  ay = 0;
  az = 0;

  mx = 0;
  my = 0;
  mz = 0;

  gx = 0;
  gy = 0;
  gz = 0;

  temperature = 0;

  imu_result.roll = 0;
  imu_result.pitch = 0;
  imu_result.yaw = 0;

  //success
  return 0;
}

void CIMU::imu_read()
{
  uint16_t tmp;

/*
  i2cStart();
  i2cWrite(LSM9DS0_GYRO_ADDRESS);  // slave address, write command
  i2cWrite(LSM9DS0_OUT_X_L_G);  // send reg address

  i2cStart();
  i2cWrite(LSM9DS0_GYRO_ADDRESS|0x01); // slave address, read command

  tmp = (uint16_t)i2cRead(1);   //read data
  tmp|= ((uint16_t)i2cRead(1))<<8;   //read data
  gx = tmp;

  tmp = (uint16_t)i2cRead(1);   //read data
  tmp|= ((uint16_t)i2cRead(1))<<8;   //read data
  gy = tmp;

  tmp = (uint16_t)i2cRead(1);   //read data
  tmp|= ((uint16_t)i2cRead(0))<<8;   //read data
  gz = tmp;

  i2cStop();
*/

  tmp = ((uint16_t)i2c_read_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_OUT_X_L_G));
  tmp|= ((uint16_t)i2c_read_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_OUT_X_H_G))<<8;
  gx = tmp;

	tmp = ((uint16_t)i2c_read_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_OUT_Y_L_G));
	tmp|= ((uint16_t)i2c_read_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_OUT_Y_H_G))<<8;
	gy = tmp;

	tmp = ((uint16_t)i2c_read_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_OUT_Z_L_G));
	tmp|= ((uint16_t)i2c_read_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_OUT_Z_H_G))<<8;
	gz = tmp;

	//read magnetometer
	tmp = ((uint16_t)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_X_L_M));
	tmp|= ((uint16_t)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_X_H_M))<<8;
	mx = tmp;

	tmp = ((uint16_t)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_Y_L_M));
	tmp|= ((uint16_t)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_Y_H_M))<<8;
	my = tmp;

	tmp = ((uint16_t)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_Z_L_M));
	tmp|= ((uint16_t)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_Z_H_M))<<8;
	mz = tmp;


	//read accelerometer
	tmp = ((uint16_t)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_X_L_A));
	tmp|= ((uint16_t)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_X_H_A))<<8;
	ax = tmp;

	tmp = ((uint16_t)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_Y_L_A));
	tmp|= ((uint16_t)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_Y_H_A))<<8;
	ay = tmp;

	tmp = ((uint16_t)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_Z_L_A));
	tmp|= ((uint16_t)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_Z_H_A))<<8;
	az = tmp;


	//read temperature
	tmp = ((uint16_t)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_TEMP_L_XM));
	tmp|= ((uint16_t)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_TEMP_H_XM))<<8;
	temperature = tmp;


  imu_result.roll = imu_result.roll + ((int32_t)gx - gx_ofs)/(int32_t)200;
  imu_result.pitch = imu_result.pitch + ((int32_t)gy - gy_ofs)/(int32_t)200;
  imu_result.yaw = imu_result.yaw + ((int32_t)gz - gz_ofs)/(int32_t)200;
  imu_result.ax = ax;
  imu_result.ay = ay;
  imu_result.az = az;
}

struct sIMUSensor* CIMU::imu_get()
{
  return &imu_result;
}
