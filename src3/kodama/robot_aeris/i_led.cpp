#include "i_led.h"

#include <device.h>

#define I_LED   (1<<15)

//timer 4 frequency in Hz
#define TIM4_FREQUENCY    ((unsigned int)20)

#include <kodama.h>

class CILED i_led;

volatile uint32_t g_iled_mode;
volatile uint32_t g_iled_param;
volatile uint32_t g_iled_time;
volatile uint8_t  g_iled_state;


extern "C" void TIM4_IRQHandler()
{
  if (TIM_GetITStatus(TIM4, TIM_IT_Update) != RESET)
  {
    TIM_ClearITPendingBit(TIM4, TIM_IT_Update);
    g_iled_time++;


    unsigned int tmp, tmp_;

    switch (g_iled_mode)
    {
      //led turn off
      case I_LED_MODE_OFF: TIM_SetCompare2(TIM15, 0); break;

      //led turn on
      case I_LED_MODE_ON: TIM_SetCompare2(TIM15, I_LED_MAX_BRIGHT); break;

      //led 1:1 blinking, period in param
      case I_LED_MODE_BLINKING:
                                //param is in miliseconds -> calculate it to timer 4 ticks
                                tmp = (g_iled_param*TIM4_FREQUENCY)/((unsigned int)1000) ;
                                if (tmp < 2)
                                  tmp = 2;

                                tmp_ = g_iled_time%tmp;

                                if (tmp_ == (tmp/2))
                                  TIM_SetCompare2(TIM15, I_LED_MAX_BRIGHT);
                                if (tmp_ == 0)
                                  TIM_SetCompare2(TIM15, 0);
                                break;

      //set custom PWM for LED
      case I_LED_MODE_CUSTOM:
                                TIM_SetCompare2(TIM15, g_iled_param);
                                break;


      //blink in pulses group
      case I_LED_MODE_BLINKING_PULSES:
                                  //400ms period calculate it to timer 4 ticks
                                  tmp = (400*TIM4_FREQUENCY)/((unsigned int)1000) ;
                                  if (tmp < 2)
                                    tmp = 2;

                                  tmp_ = g_iled_time%tmp;

                                  if (tmp_ == (tmp/2))
                                  {
                                    g_iled_state = (g_iled_state + 1)%(g_iled_param + 5);
                                    if (g_iled_state >= 5)
                                      TIM_SetCompare2(TIM15, I_LED_MAX_BRIGHT);
                                    else
                                      TIM_SetCompare2(TIM15, 0);
                                  }
                                  if (tmp_ == 0)
                                    TIM_SetCompare2(TIM15, 0);

                                  break;


      //breathing led with specified period
      case I_LED_MODE_BREATH:
                                  tmp = (2*I_LED_MAX_BRIGHT*((unsigned int)1000))/(TIM4_FREQUENCY*(g_iled_param+1));

                                  if (tmp < 1)
                                    tmp = 1;

                                  if (g_iled_state < I_LED_MAX_BRIGHT)
                                    TIM_SetCompare2(TIM15, g_iled_state);
                                  else
                                    TIM_SetCompare2(TIM15, I_LED_MAX_BRIGHT - (g_iled_state-I_LED_MAX_BRIGHT));

                                  g_iled_state = (g_iled_state + tmp)%(2*I_LED_MAX_BRIGHT);

                                  break;

    }
  }
}




CILED::CILED()
{

}

CILED::~CILED()
{

}

void CILED::init()
{
  g_iled_mode = 0;
  g_iled_param = 0;
  g_iled_time = 0;
  g_iled_state = 0;


  GPIO_InitTypeDef  GPIO_InitStructure;

  RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOB, ENABLE);


  GPIO_InitStructure.GPIO_Pin = I_LED;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;

  GPIO_Init(GPIOB, &GPIO_InitStructure);
  GPIOB->BRR = I_LED;


  RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM4, ENABLE);



  NVIC_InitTypeDef NVIC_InitStructure;
  /* Enable the TIM4 gloabal Interrupt */
  NVIC_InitStructure.NVIC_IRQChannel = TIM4_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 1;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);

  TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;

  /* TIM4 clock enable */
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM4, ENABLE);
  /* Time base configuration */
  TIM_TimeBaseStructure.TIM_Period = 100000/TIM4_FREQUENCY;
  TIM_TimeBaseStructure.TIM_Prescaler = 720;
  TIM_TimeBaseStructure.TIM_ClockDivision = 0;
  TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
  TIM_TimeBaseInit(TIM4, &TIM_TimeBaseStructure);
  /* TIM IT enable */
  TIM_ITConfig(TIM4, TIM_IT_Update, ENABLE);
  /* TIM4 enable counter */
  TIM_Cmd(TIM4, ENABLE);



  //pin to PWM output
  GPIO_InitStructure.GPIO_Pin = LED_0;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_Init(GPIOB, &GPIO_InitStructure);
  GPIO_PinAFConfig(GPIOB, GPIO_PinSource15, GPIO_AF_1);    //connect PB15 to timer15

  //init timer 15 to pwm mode
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM15, ENABLE);

  TIM_TimeBaseStructure.TIM_Prescaler = 7200;
  TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
  TIM_TimeBaseStructure.TIM_Period = I_LED_MAX_BRIGHT+1;
  TIM_TimeBaseStructure.TIM_ClockDivision = 0;
  TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;

  TIM_TimeBaseInit(TIM15, &TIM_TimeBaseStructure);


  TIM_Cmd(TIM15, ENABLE);
  TIM_CtrlPWMOutputs(TIM15, ENABLE);


  TIM_OCInitTypeDef  TIM_OCInitStructure;

  TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM2;
  TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
  TIM_OCInitStructure.TIM_OutputNState = TIM_OutputNState_Enable;
  TIM_OCInitStructure.TIM_Pulse = 0;
  TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_Low;
  TIM_OCInitStructure.TIM_OCNPolarity = TIM_OCNPolarity_High;
  TIM_OCInitStructure.TIM_OCIdleState = TIM_OCIdleState_Set;
  TIM_OCInitStructure.TIM_OCNIdleState = TIM_OCIdleState_Reset;

  TIM_OC2Init(TIM15, &TIM_OCInitStructure);
}


void CILED::set(unsigned char mode, unsigned int param)
{
  g_iled_mode = mode;
  g_iled_param = param;
  g_iled_time = 0;
  g_iled_state = 0;
}
