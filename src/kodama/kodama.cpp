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
  if (gpio_init() < 0)
    return -1;

  if (terminal_init() < 0)
    return -2;

  if (timer_init() < 0)
    return -3;

  if (imu_init() < 0)
    return -4;

  return 0;
}

int32_t CKodama::sensor_get(uint32_t sensor_id)
{
  //(void)sensor_id;
  return 0;
}

void CKodama::motor_set(uint32_t  motor_id, int32_t value)
{
//  (void)motor_id;
  ////(void)value;
}


void CKodama::sensor_read()
{

}

int32_t CKodama::comm_send( unsigned char *tx_buffer, uint32_t tx_buffer_length,
                           unsigned char *rx_buffer, uint32_t rx_buffer_length)
{
  //(void)tx_buffer;
  //(void)tx_buffer_length;
  //(void)rx_buffer;
  //(void)rx_buffer_length;

  return 0;
}
