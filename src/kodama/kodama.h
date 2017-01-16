#ifndef _KODAMA_H_
#define _KODAMA_H_

#include <stdint.h>

#include <gpio.h>
#include <error.h>
#include <terminal.h>

#include <timer.h>
#include <motor.h>
#include <i_led.h>
#include <devices.h>


#include <config.h>

#include "system/rt_timer.h"
#include "system/dfu_boot.h"
#include "system/uniqueid.h"

#include <controll/vector.h>
#include <controll/math_vector.h>
#include <controll/math.h>
#include <controll/pid.h>

#include <controll/associative_memory.h>
#include <controll/reinforcement_learning.h>

#ifdef USE_RGB
#include <rgb.h>
#endif

#ifndef NULL
#define NULL  0
#endif

class CKodama: public CGPIO, public CError, public CTerminal, public CMotor, public CUniqueID
#ifdef USE_RGB
, public CRGB
#endif

#ifdef USE_IMU
, public CIMU
#endif

#ifdef USE_CAMERA
, public CCamera
#endif

#ifdef USE_OLED_LCD
, public CSSD1306OLED
#endif

#ifdef USE_VL530X
, public CVL53L0X
#endif

#ifdef USE_MLX90621
, public CMLX90621
#endif
{
  private:
    int32_t ms_dt;
    uint32_t motor_value[MOTORS_COUNT];

  public:
    class CI2C i2c;

  public:
    CKodama();
    ~CKodama();

    int32_t init();
    int32_t init_();

    void sleep();
    void wakeup();

    void set_dt(int32_t ms_dt_);


   void rotate_robot(int32_t angle, int32_t speed, int32_t (*terminating_func)() = NULL);
   void go_forward(int32_t distance, int32_t speed, int32_t (*terminating_func)() = NULL);

};

extern class CKodama kodama;

#endif
