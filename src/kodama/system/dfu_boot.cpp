#include "dfu_boot.h"

#include <device.h>

#define BOOT_ADDRESS    ((uint32_t)0x1FFFD800)


void enter_dfu_boot()
{
  void (*SysMemBootJump)(void);

  SysMemBootJump =         (void (*)(void)) (*((uint32_t*)(BOOT_ADDRESS+4)));

  RCC_DeInit();

  SysTick->CTRL = 0;
  SysTick->LOAD = 0;
  SysTick->VAL = 0;

  __set_PRIMASK(1);   //disable interrupts

  USART_DeInit(USART1);
  USART_DeInit(USART2);
  USART_DeInit(USART3);
  USART_DeInit(UART4);
  USART_DeInit(UART5);

  TIM_Cmd(TIM1, DISABLE);
  TIM_Cmd(TIM2, DISABLE);
  TIM_Cmd(TIM3, DISABLE);
  TIM_Cmd(TIM4, DISABLE);
  TIM_Cmd(TIM6, DISABLE);
  TIM_Cmd(TIM7, DISABLE);
  TIM_Cmd(TIM8, DISABLE);

  TIM_Cmd(TIM15, DISABLE);
  TIM_Cmd(TIM16, DISABLE);
  TIM_Cmd(TIM17, DISABLE);
  TIM_Cmd(TIM20, DISABLE);


  GPIO_DeInit(GPIOA);
  GPIO_DeInit(GPIOB);
  GPIO_DeInit(GPIOC);
  GPIO_DeInit(GPIOD);
  GPIO_DeInit(GPIOE);
  GPIO_DeInit(GPIOF);
  GPIO_DeInit(GPIOG);
  GPIO_DeInit(GPIOH);


  //__set_MSP(0x20001400);       //default stackpointer value
  __set_MSP(0x20001000);       //default stackpointer value

  SysMemBootJump();
}
