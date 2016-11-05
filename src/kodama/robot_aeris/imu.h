#ifndef _IMU_H_
#define _IMU_H_

#include "i2c.h"

struct sIMUSensor
{
  int32_t roll_, pitch_, yaw_;  //raw values from gyro

  int32_t roll, pitch, yaw;
	int32_t ax, ay, az;
};

class CIMU
{
  private:
    int32_t gx_ofs, gy_ofs, gz_ofs;

    int16_t ax, ay, az;
    int16_t mx, my, mz;
    int16_t gx, gy, gz;

    int16_t temperature;

    struct sIMUSensor imu_result;

  public:
    CIMU();
    ~CIMU();

    int32_t imu_init();
    void imu_read();

    struct sIMUSensor* imu_get();
};

#endif
