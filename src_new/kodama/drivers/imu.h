#ifndef _IMU_H_
#define _IMU_H_

#include <kodama.h>

struct sIMUResult
{
  int32_t roll, pitch, yaw;
  int32_t gx, gy, gz;
	int32_t ax, ay, az;
};

class CIMU
{
  private:
    int32_t roll, pitch, yaw;
    int32_t gx_ofs, gy_ofs, gz_ofs;

  public:
    struct sIMUResult imu_result;

  protected:
    int32_t imu_ms_dt;

  public:
    CIMU();
    ~CIMU();

    int init();
    void read();
};

#endif
