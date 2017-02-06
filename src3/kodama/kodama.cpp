#include "kodama.h"


class CKodama kodama;

CKodama::CKodama()
{
  init();
}

CKodama::~CKodama()
{

}

int32_t CKodama::init()
{
  unsigned int i;
  int32_t res = 0;

  for (i = 0; i < 8; i++)
  {
    res = init_();
    this->printf("kodama init %i %i : ", i, res);

    if (res == 0)
    {
        this->printf(" [OK]\n");
      break;
    }
    else
        this->printf(" [FAILED]\n\n");
  }

  return res;
}

int32_t CKodama::init_()
{
  int32_t init_res = 0;

  #ifdef _GPIO_H_
  if ((init_res = gpio_init()) < 0)
    return -10000 + init_res;
  #endif

  i2c.init();


  #ifdef _TERMINAL_H_
  if ((init_res = terminal_init()) < 0)
    return -20000 + init_res;
  #endif

  #ifdef _TIMER_H_
  if ((init_res = timer.timer_init()) < 0)
    return -30000 + init_res;
  #endif

  #ifdef _MOTORS_H_
  if ((init_res = motor_init()) < 0)
    return -40000 + init_res;
  #endif

  #ifdef USE_RGB
  if ((init_res = rgb_init()) < 0)
    return -50000 + init_res;
  #endif

  #ifdef USE_IMU
  if ((init_res = imu_init(&i2c)) < 0)
    return -60000 + init_res;
  #endif

  #ifdef USE_CAMERA
  camera_init();
  #endif

  #ifdef USE_OLED_LCD
  if ((init_res = oled_lcd_init(&i2c)) < 0)
    return -70000 + init_res;
  #endif

  #ifdef USE_VL530X
  if ((init_res = laser_init(&i2c)) < 0)
    return -80000 + init_res;
  #endif

  #ifdef USE_MLX90621
  ir_init(&i2c);
  #endif

  return init_res;
}


void CKodama::sleep()
{
  #ifdef LED_1
  gpio_off(LED_1);
  #endif

  motor_sleep();
}

void CKodama::wakeup()
{
  #ifdef LED_1
  gpio_on(LED_1);
  #endif

  set_motor(MOTOR_LEFT, 0);
  set_motor(MOTOR_RIGHT, 0);
}


void CKodama::set_dt(int32_t ms_dt_)
{
  this->ms_dt = ms_dt_;
}



void CKodama::rotate_robot(int32_t angle, int32_t speed, int32_t (*terminating_func)())
{
  #ifdef USE_IMU

  imu_read();

  int32_t required_angle = angle + imu_get()->yaw;
  int32_t dif_speed = 0;

  int32_t tmp, error_value;

  while (1)
  {
    timer.delay_ms(10);

      if (terminating_func != NULL)
        if (terminating_func() != 0)    //terminating func returns non zero - terminate action
          break;

      imu_read();
      error_value = required_angle - imu_get()->yaw;

      int32_t sgn;

      if (error_value > 0)
        sgn = 1;
      else
        sgn = -1;

      if (dif_speed < speed)
        dif_speed++;

      set_motor(MOTOR_LEFT, dif_speed*sgn);
      set_motor(MOTOR_RIGHT, -dif_speed*sgn);

      tmp = error_value;
      if (tmp < 0)
        tmp = -tmp;

      if (tmp < 50)
        break;
  }

  set_motor(MOTOR_LEFT, 0);
  set_motor(MOTOR_RIGHT, 0);
  timer.delay_ms(20);

  #endif
}


void CKodama::go_forward(int32_t distance, int32_t speed, int32_t (*terminating_func)())
{
  #ifdef USE_IMU

  class PID<float> pid( PID_FORWARD_KP,
                        PID_FORWARD_KI,
                        PID_FORWARD_KD,
                        PID_FORWARD_U);


  imu_read();

  int32_t required_angle = 0 + imu_get()->yaw;
  int32_t distance_end = get_encoder_distance() + distance;

  int32_t speed_ = 0;



  while (1)
  {
    timer.delay_ms(10);

      if (terminating_func != NULL)
        if (terminating_func() != 0)    //terminating func returns non zero - terminate action
          break;

      if (distance_end < get_encoder_distance())
        break;

      imu_read();

      int32_t dif_speed = (int32_t)pid.process(required_angle - imu_get()->yaw);

      if (speed_ < speed)
        speed_++;

      set_motor(MOTOR_LEFT, dif_speed + speed_);
      set_motor(MOTOR_RIGHT, -dif_speed + speed_);
  }


  set_motor(MOTOR_LEFT, 0);
  set_motor(MOTOR_RIGHT, 0);

  timer.delay_ms(20);

  #endif
}
