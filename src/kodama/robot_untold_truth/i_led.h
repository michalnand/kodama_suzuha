#ifndef _I_LED_H_
#define _I_LED_H_

#include "gpio.h"

#define I_LED_MAX_BRIGHT          ((unsigned int)64)

#define I_LED_MODE_OFF                 ((unsigned char)0)      //LED is off
#define I_LED_MODE_ON                  ((unsigned char)1)      //full bright LED on
#define I_LED_MODE_BLINKING            ((unsigned char)2)      //blinking period 1:1 perdiod in ms in param
#define I_LED_MODE_CUSTOM              ((unsigned char)3)      //set led bright in range <0, I_LED_MAX_BRIGHT> in param

//TODO
#define I_LED_MODE_BLINKING_PULSES     ((unsigned char)4)      //blinking in grouped pulses with count in param <1, 16> pulses
#define I_LED_MODE_BREATH              ((unsigned char)5)      //breathing led

class CILED
{
  public:
    CILED();
    ~CILED();

    void init();
    void set(unsigned char mode, unsigned int param = 100);

  private:
    void set_pwm(unsigned int pwm);

};

extern class CILED i_led;


#endif
