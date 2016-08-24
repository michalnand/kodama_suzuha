#ifndef _GPIO_H_
#define _GPIO_H_

#include <stdint.h>

#define GPIO_BASE	GPIOB

#define LED_0		(1)    //main led
#define LED_1		(2)    //white led for sensors ilumination
#define KEY 		(3)    //main button

#define ENCODER_CONSTANT ((u32)750) //670


class CGPIO
{
  public:
    CGPIO();
    ~CGPIO();

    int32_t gpio_init();

    void gpio_on(uint32_t pin);
    void gpio_off(uint32_t pin);
    uint32_t gpio_in(uint32_t pin);

    int32_t get_left_encoder();
    int32_t get_right_encoder();
    int32_t get_encoder_distance();
};


#endif
