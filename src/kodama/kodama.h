#ifndef _KODAMA_H_
#define _KODAMA_H_

#include <stdint.h>

#include "gpio.h"
#include "terminal.h"
#include "timer.h"
#include "imu.h"
#include "pid.h"

#include "vector.h"

class CKodama: public CGPIO, public CTerminal, public CTimer, public CIMU
{
  public:
    CKodama();
    ~CKodama();

    int32_t init();


    int32_t sensor_get(uint32_t sensor_id);
    void motor_set(uint32_t  motor_id, int32_t value);


    void sensor_read();

    int32_t comm_send( unsigned char *tx_buffer, uint32_t tx_buffer_length,
                               unsigned char *rx_buffer, uint32_t rx_buffer_length);
};


#endif
