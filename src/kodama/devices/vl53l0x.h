#ifndef _VL53L0X_H_
#define _VL53L0X_H_

#include <i2c.h>

class CVL53L0X
{
  private:
    class CI2C *i2c;

    int distance_result;

    unsigned char range_data[14];

  public:
    CVL53L0X();
    ~CVL53L0X();

    int laser_init(class CI2C *i2c_);

    int laser_read();
    int laser_get();

  private:
    bool getSPADinfo(unsigned char *count, bool * type_is_aperture);
    bool performSingleRefCalibration(unsigned char vhv_init_byte);

};


#endif
