#ifndef _KODAMA_H_
#define _KODAMA_H_

#include <stdint.h>

#include <gpio.h>
#include <terminal.h>
#include <timer.h>
#include <imu.h>
#include <sensors.h>
#include <error.h>
#include <motor.h>

#include <controll/vector.h>
#include <controll/pid.h>
#include <controll/sparse_memory.h>

class CKodama: public CGPIO, public CTerminal, public CTimer, public CIMU, public CSensors, public CError, public CMotor
{
  private:
    uint32_t motor_value[MOTORS_COUNT];

  public:
    CKodama();
    ~CKodama();

    int32_t init();

    void sleep();
    void wakeup();


    int32_t sensor_get(uint32_t sensor_id);


    void sensor_read();

    int32_t comm_send( unsigned char *tx_buffer, uint32_t tx_buffer_length,
                               unsigned char *rx_buffer, uint32_t rx_buffer_length);
};


#endif
