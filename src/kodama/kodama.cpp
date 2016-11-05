#include "kodama.h"


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

  #ifdef _TERMINAL_H_
  if ((init_res = terminal_init()) < 0)
    return -20000 + init_res;
  #endif

  #ifdef _TIMER_H_
  if ((init_res = timer_init()) < 0)
    return -30000 + init_res;
  #endif

  #ifdef _SENSORS_H_
  if ((init_res = sensors_init()) < 0)
    return -40000 + init_res;
  #endif

  #ifdef _MOTORS_H_
  if ((init_res = motor_init()) < 0)
    return -50000 + init_res;
  #endif

  return init_res;
}



int32_t CKodama::sensor_get(uint32_t sensor_id)
{
  (void)sensor_id;
  return 0;
}


void CKodama::sensor_read()
{

}

int32_t CKodama::comm_send( unsigned char *tx_buffer, uint32_t tx_buffer_length,
                           unsigned char *rx_buffer, uint32_t rx_buffer_length)
{
  (void)tx_buffer;
  (void)tx_buffer_length;
  (void)rx_buffer;
  (void)rx_buffer_length;

  return 0;
}


void CKodama::rotate_robot(int32_t angle, int32_t speed, int32_t (*terminating_func)())
{
  int32_t required_angle = angle + get_imu_result()->yaw;
  int32_t dif_speed = 0;

  int32_t tmp, error;


  do
  {
    if (terminating_func != NULL)
      if (terminating_func() != 0)    //terminating func returns non zero - terminate action
        break;

    error = required_angle - get_imu_result()->yaw;

    int32_t sgn;

    if (error > 0)
      sgn = 1;
    else
      sgn = -1;

    if (dif_speed < speed)
      dif_speed++;

    set_motor(MOTOR_LEFT, dif_speed*sgn);
    set_motor(MOTOR_RIGHT, -dif_speed*sgn);

    delay_ms(20);

    tmp = error;
    if (tmp < 0)
      tmp = -tmp;
  }
  while (tmp > 50);


  set_motor(MOTOR_LEFT, 0);
  set_motor(MOTOR_RIGHT, 0);

  delay_ms(20);

}


void CKodama::go_forward(int32_t distance, int32_t speed, int32_t (*terminating_func)())
{
  int32_t required_angle = get_imu_result()->yaw;

  int32_t speed_ = 0;
  int32_t distance_ = 0;


  class CPID pid( PID_FORWARD_KP,
                  PID_FORWARD_KI,
                  PID_FORWARD_KD,
                  PID_FORWARD_U);

  do
  {
    if (terminating_func != NULL)
      if (terminating_func() != 0)    //terminating func returns non zero - terminate action
        break;

    int32_t dif_speed = (int32_t)pid.process(1.0*required_angle - 1.0*get_imu_result()->yaw);
    if (speed_ < speed)
      speed_++;

    set_motor(MOTOR_LEFT, dif_speed + speed_);
    set_motor(MOTOR_RIGHT, -dif_speed + speed_);

    delay_ms(20);
  }
    while (distance > distance_);


  set_motor(MOTOR_LEFT, 0);
  set_motor(MOTOR_RIGHT, 0);

  delay_ms(20);
}
