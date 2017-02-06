#ifndef _MOTORS_H_
#define _MOTORS_H_

#include <kodama.h>


#define SPEED_MAX      (int32_t)44


#define MOTOR_LEFT    0
#define MOTOR_RIGHT   1

#define MOTORS_COUNT  2

class CMotorI2C
{
  private:
    uint32_t motors[MOTORS_COUNT];

  public:
    CMotorI2C();
    ~CMotorI2C();

    int32_t init();

    void sleep();


    void set_motor(uint32_t  motor_id, int32_t value);
    void set_motors(int32_t left_motor, int32_t right_motor);

    void motor_refresh();

};

#endif
