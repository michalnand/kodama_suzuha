#ifndef _IMU_H_
#define _IMU_H_

#include <i2c.h>

struct sIMUSensor
{
  int32_t roll, pitch, yaw;
  int32_t gx, gy, gz;
	int32_t ax, ay, az;
};

class CIMU
{
  private:
    class CI2C *i2c;

    int32_t gx_ofs, gy_ofs, gz_ofs;
    int32_t roll, pitch, yaw;

    struct sIMUSensor imu_result;

  protected:
    int32_t imu_ms_dt;

  public:
    CIMU();
    ~CIMU();

    int imu_init(class CI2C *i2c_);
    void imu_read();

    struct sIMUSensor* imu_get();
};

#endif
