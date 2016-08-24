#include "gpio.h"

#include <device.h>


CGPIO::CGPIO()
{
  gpio_init();
}

CGPIO::~CGPIO()
{

}

int32_t CGPIO::gpio_init()
{
  GPIO_InitTypeDef  GPIO_InitStructure;

  RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOA, ENABLE);
  RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOB, ENABLE);
  RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOC, ENABLE);


  //main led
  GPIO_InitStructure.GPIO_Pin = (1<<15);
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;

  GPIO_Init(GPIOB, &GPIO_InitStructure);



  //white led
  GPIO_InitStructure.GPIO_Pin = (1<<3);
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;

  GPIO_Init(GPIOA, &GPIO_InitStructure);



  //button
  GPIO_InitStructure.GPIO_Pin = (1<<9);
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;

  GPIO_Init(GPIOB, &GPIO_InitStructure);

  return 0;
}


void CGPIO::gpio_on(uint32_t pin)
{
  if (pin == LED_0)
	 GPIOB->BSRR = (1<<15);

  if (pin == LED_1)
 	 GPIOA->BRR = (1<<3);
}

void CGPIO::gpio_off(uint32_t pin)
{
  if (pin == LED_0)
	 GPIOB->BRR = (1<<15);

  if (pin == LED_1)
 	 GPIOA->BSRR = (1<<3);
}

uint32_t CGPIO::gpio_in(uint32_t pin)
{
  if (pin == KEY)
    return (~GPIOB->IDR)&(1<<9);

  return 0;
}





int32_t CGPIO::get_left_encoder()
{
  return 0;
}


int32_t CGPIO::get_right_encoder()
{
  return 0;
}


int32_t CGPIO::get_encoder_distance()
{
	return (get_left_encoder() + get_right_encoder())/((int32_t)2);
}
