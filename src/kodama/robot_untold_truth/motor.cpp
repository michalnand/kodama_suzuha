#include "motor.h"

#include <device.h>

//RIGHT motor gpio
#define VNH3SP30_RIGHT_INA_GPIO		 GPIOB
#define VNH3SP30_RIGHT_INA			   ((uint32_t)(1<<5))
#define VNH3SP30_RIGHT_INB_GPIO		 GPIOC
#define VNH3SP30_RIGHT_INB			   ((uint32_t)(1<<10))

//left motor GPIO
#define VNH3SP30_LEFT_INA_GPIO		 GPIOA
#define VNH3SP30_LEFT_INA			   ((uint32_t)(1<<15))
#define VNH3SP30_LEFT_INB_GPIO		 GPIOC
#define VNH3SP30_LEFT_INB			   ((uint32_t)(1<<11))



#define PWM_BASE_CLOCK  SystemCoreClock
//#define PWM_FREQUENCY   4096
#define PWM_FREQUENCY   10000
#define PWM_PERIOD      ((SystemCoreClock/PWM_FREQUENCY) - 1)


#define PWM_CH_1 	(1<<13)	//right
#define PWM_CH_2 	(1<<14)	//left


CMotor::CMotor()
{

}

CMotor::~CMotor()
{

}

int32_t CMotor::motor_init()
{
  unsigned int i;

  GPIO_InitTypeDef  GPIO_InitStructure;

  //init gpio as output
  GPIO_InitStructure.GPIO_Pin = VNH3SP30_RIGHT_INA;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;

  GPIO_Init(VNH3SP30_RIGHT_INA_GPIO, &GPIO_InitStructure);
  VNH3SP30_RIGHT_INA_GPIO->BSRR = VNH3SP30_RIGHT_INA;   //pin to one

  //init gpio as output
  GPIO_InitStructure.GPIO_Pin = VNH3SP30_RIGHT_INB;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;

  GPIO_Init(VNH3SP30_RIGHT_INB_GPIO, &GPIO_InitStructure);
  VNH3SP30_RIGHT_INB_GPIO->BSRR = VNH3SP30_RIGHT_INB;   //pin to one



  //init gpio as output
  GPIO_InitStructure.GPIO_Pin = VNH3SP30_LEFT_INA;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;

  GPIO_Init(VNH3SP30_LEFT_INA_GPIO, &GPIO_InitStructure);
  VNH3SP30_LEFT_INA_GPIO->BSRR = VNH3SP30_LEFT_INA;   //pin to one

  //init gpio as output
  GPIO_InitStructure.GPIO_Pin = VNH3SP30_LEFT_INB;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;

  GPIO_Init(VNH3SP30_LEFT_INB_GPIO, &GPIO_InitStructure);
  VNH3SP30_LEFT_INB_GPIO->BSRR = VNH3SP30_LEFT_INB;   //pin to one





  RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM1, ENABLE);
  RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOB, ENABLE);




  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_13|GPIO_Pin_14;

  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;

  GPIO_Init(GPIOB, &GPIO_InitStructure);

  GPIO_PinAFConfig(GPIOB, GPIO_PinSource13, GPIO_AF_6);
  GPIO_PinAFConfig(GPIOB, GPIO_PinSource14, GPIO_AF_6);

  TIM_TimeBaseInitTypeDef  TIM_TimeBaseStructure;


  /* Time Base configuration */
  TIM_TimeBaseStructure.TIM_Prescaler = 0;
  TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
  TIM_TimeBaseStructure.TIM_Period = PWM_PERIOD;
  TIM_TimeBaseStructure.TIM_ClockDivision = 0;
  TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;

  TIM_TimeBaseInit(TIM1, &TIM_TimeBaseStructure);


  pwm_set(0, 0);

  /* TIM1 counter enable */
  TIM_Cmd(TIM1, ENABLE);

  /* TIM1 Main Output Enable */
  TIM_CtrlPWMOutputs(TIM1, ENABLE);


  for (i = 0; i < MOTORS_COUNT; i++)
    set_motor(i, -50);


  return 0;
}

void CMotor::set_motor(uint32_t motor_id, int32_t value)
{
  if (motor_id < MOTORS_COUNT)
    motors[motor_id] = value;

  motor_refresh();
}

void CMotor::motor_sleep()
{

}


void CMotor::motor_refresh()
{
  int32_t left_pwm = motors[MOTOR_LEFT];
  int32_t right_pwm = motors[MOTOR_RIGHT];

  //set rotation direction for left motor
  //break
  if (left_pwm == 0)
  {
    VNH3SP30_LEFT_INA_GPIO->BSRR = VNH3SP30_LEFT_INA;
    VNH3SP30_LEFT_INB_GPIO->BSRR = VNH3SP30_LEFT_INB;
    left_pwm = SPEED_MAX;
  }
  else
  if (left_pwm > 0)
	{
    VNH3SP30_LEFT_INA_GPIO->BRR = VNH3SP30_LEFT_INA;
    VNH3SP30_LEFT_INB_GPIO->BSRR = VNH3SP30_LEFT_INB;
	}
	else
	{
    VNH3SP30_LEFT_INA_GPIO->BSRR = VNH3SP30_LEFT_INA;
    VNH3SP30_LEFT_INB_GPIO->BRR = VNH3SP30_LEFT_INB;

		left_pwm = -left_pwm;
	}

  //set rotation direction for right motor
  //break
  if (right_pwm == 0)
  {
    VNH3SP30_RIGHT_INA_GPIO->BSRR = VNH3SP30_RIGHT_INA;
    VNH3SP30_RIGHT_INB_GPIO->BSRR = VNH3SP30_RIGHT_INB;
    right_pwm = SPEED_MAX;
  }
  else
  if (right_pwm > 0)
	{
    VNH3SP30_RIGHT_INA_GPIO->BRR = VNH3SP30_RIGHT_INA;
    VNH3SP30_RIGHT_INB_GPIO->BSRR = VNH3SP30_RIGHT_INB;
	}
	else
	{
    VNH3SP30_RIGHT_INA_GPIO->BSRR = VNH3SP30_RIGHT_INA;
    VNH3SP30_RIGHT_INB_GPIO->BRR = VNH3SP30_RIGHT_INB;

		right_pwm = -right_pwm;
	}


  //PWM limitation
	if (left_pwm > SPEED_MAX)
		left_pwm = SPEED_MAX;

	if (right_pwm > SPEED_MAX)
		right_pwm = SPEED_MAX;

  //invert (because of inverted inputs) pwm and set for both channels
  pwm_set(SPEED_MAX - right_pwm, SPEED_MAX - left_pwm);
}



void CMotor::pwm_set(uint32_t ch1, uint32_t ch2)
{
    TIM_OCInitTypeDef  TIM_OCInitStructure;


    TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM2;
    TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
    TIM_OCInitStructure.TIM_OutputNState = TIM_OutputNState_Enable;
    TIM_OCInitStructure.TIM_Pulse = 0;
    TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_Low;
    TIM_OCInitStructure.TIM_OCNPolarity = TIM_OCNPolarity_High;
    TIM_OCInitStructure.TIM_OCIdleState = TIM_OCIdleState_Set;
    TIM_OCInitStructure.TIM_OCNIdleState = TIM_OCIdleState_Reset;


    TIM_OCInitStructure.TIM_Pulse = (ch1*(PWM_PERIOD-1))/100;
    TIM_OC1Init(TIM1, &TIM_OCInitStructure);

    TIM_OCInitStructure.TIM_Pulse = (ch2*(PWM_PERIOD-1))/100;
    TIM_OC2Init(TIM1, &TIM_OCInitStructure);
}
