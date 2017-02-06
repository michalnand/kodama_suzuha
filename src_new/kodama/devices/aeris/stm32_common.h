#ifndef _STM32_COMMON_H_
#define _STM32_COMMON_H_

#include "stm32f303.h"


void nvic_init(uint32_t IRQChannel, uint32_t ChannelPreemptionPriority, uint32_t ChannelSubPriority);
void timer_init(TIM_TypeDef* TIMx, uint32_t counter_mode, uint32_t clock_division, uint32_t period, uint32_t prescaler);
void usart_init(USART_TypeDef* USARTx, uint32_t baudrate);


#endif
