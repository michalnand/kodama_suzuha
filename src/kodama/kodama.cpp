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
  int32_t init_res;

  #ifdef _GPIO_H_
  if ((init_res = gpio_init()) < 0)
    return -10000 + init_res;
  #endif

  #ifdef _TEMRINAL_H_
  if ((init_res = terminal_init()) < 0)
    return -20000 + init_res;
  #endif

  #ifdef _TIMER_H_
  if ((init_res = timer_init()) < 0)
    return -30000 + init_res;
  #endif

  #ifdef _IMU_H_
  if ((init_res = imu_init()) < 0)
    return -40000 + init_res;
  #endif

  #ifdef _SENSORS_H_
  if ((init_res = sensors_init()) < 0)
    return -50000 + init_res;
  #endif


  #ifdef _MOTORS_H_
  if ((init_res = motor_init()) < 0)
    return -60000 + init_res;
  #endif

  return 0;
}


void CKodama::sleep()
{
  sensors_sleep();
  motor_sleep();
}

void CKodama::wakeup()
{
  sensors_init();
  motor_init();
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
