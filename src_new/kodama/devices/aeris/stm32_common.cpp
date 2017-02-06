#include "stm32_common.h"
#include <kodama_config.h>

void nvic_init(uint32_t IRQChannel, uint32_t ChannelPreemptionPriority, uint32_t ChannelSubPriority)
{
  uint8_t tmppriority = 0x00, tmppre = 0x00, tmpsub = 0x0F;


  /* Compute the Corresponding IRQ Priority --------------------------------*/
  tmppriority = (0x700 - ((SCB->AIRCR) & (uint32_t)0x700))>> 0x08;
  tmppre = (0x4 - tmppriority);
  tmpsub = tmpsub >> tmppriority;

  tmppriority = ChannelPreemptionPriority << tmppre;
  tmppriority |=  (uint8_t)(ChannelSubPriority & tmpsub);

  tmppriority = tmppriority << 0x04;

  NVIC->IP[IRQChannel] = tmppriority;

  /* Enable the Selected IRQ Channels --------------------------------------*/
  NVIC->ISER[IRQChannel >> 0x05] =
    (uint32_t)0x01 << (IRQChannel & (uint8_t)0x1F);
}

void timer_init(TIM_TypeDef* TIMx, uint32_t counter_mode, uint32_t clock_division, uint32_t period, uint32_t prescaler)
{
  uint16_t tmpcr1 = 0;
  tmpcr1 = TIMx->CR1;

  if((TIMx == TIM1) || (TIMx == TIM8)|| (TIMx == TIM2) ||
     (TIMx == TIM3) || (TIMx == TIM4) || (TIMx == TIM20))
  {
    /* Select the Counter Mode */
    tmpcr1 &= (uint16_t)(~(TIM_CR1_DIR | TIM_CR1_CMS));
    tmpcr1 |= (uint32_t)counter_mode;
  }

  if((TIMx != TIM6) && (TIMx != TIM7))
  {
    /* Set the clock division */
    tmpcr1 &=  (uint16_t)(~TIM_CR1_CKD);
    tmpcr1 |= (uint32_t)clock_division;
  }

  TIMx->CR1 = tmpcr1;

  /* Set the Autoreload value */
  TIMx->ARR = period ;

  /* Set the Prescaler value */
  TIMx->PSC = prescaler;

  if ((TIMx == TIM1) || (TIMx == TIM8)|| (TIMx == TIM15) ||
      (TIMx == TIM16) || (TIMx == TIM17)|| (TIMx == TIM20))
  {
    /* Set the Repetition Counter value */
    TIMx->RCR = 0;
  }

  /* Generate an update event to reload the Prescaler
     and the repetition counter(only for TIM1 and TIM8) value immediately */
  TIMx->EGR = 0x01; //TIM_PSCReloadMode_Immediate;

  //timer enable
  TIMx->CR1 |= TIM_CR1_CEN;

  // Enable interrupt on update event
  TIMx->DIER |= TIM_DIER_UIE;
}



void usart_init(USART_TypeDef* USARTx, uint32_t baudrate)
{
  uint32_t apbclock  = F_CPU;

  USARTx->CR2 = 0;  //1stop bit
  USARTx->CR1 = USART_CR1_RE|USART_CR1_TE;  //8bit word, no parity, RX, TX enable
  USARTx->CR3 = 0;

  USARTx->BRR = apbclock/baudrate;
  USARTx->CR1 |= USART_CR1_UE;    //usart enable
}
