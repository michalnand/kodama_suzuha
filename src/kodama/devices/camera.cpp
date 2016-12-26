#include "camera.h"


struct sLineCamera g_camera;

CCamera::CCamera()
{

}

CCamera::~CCamera()
{

}

void CCamera::camera_init()
{
		g_camera.state = 0;
		g_camera.flag = 0;
		g_camera.frame_flag = 0;
		g_camera.average = 0;
		g_camera.line_position = 0;
		unsigned int i;

		for (i = 0; i < LINE_CAMERA_PIXELS_COUNT; i++)
		{
			g_camera.pixels_raw[i] = 0;
			g_camera.pixels[i] = g_camera.pixels_raw[i];
		}

		GPIO_InitTypeDef  GPIO_InitStructure;


		GPIO_InitStructure.GPIO_Pin = LINE_CAMERA_CLK | LINE_CAMERA_SI;
		GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
		GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
		GPIO_Init(LINE_CAMERA_GPIO, &GPIO_InitStructure);

		GPIO_InitStructure.GPIO_Pin = LINE_CAMERA_AO;
		GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AN;
		GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
		GPIO_Init(LINE_CAMERA_AO_GPIO, &GPIO_InitStructure);


		LINE_CAMERA_GPIO->BRR = LINE_CAMERA_CLK;    // CLK = 0*/
		LINE_CAMERA_GPIO->BRR = LINE_CAMERA_SI;   // SI = 0*/



		//	init ADC1 for camera reading
		ADC_InitTypeDef       ADC_InitStructure;

		RCC_ADCCLKConfig(RCC_ADC12PLLCLK_Div2);
		RCC_AHBPeriphClockCmd(RCC_AHBPeriph_ADC12, ENABLE);

		ADC_InitStructure.ADC_AutoInjMode = ADC_AutoInjec_Disable;
		ADC_InitStructure.ADC_ContinuousConvMode = ADC_ContinuousConvMode_Disable;
		ADC_InitStructure.ADC_DataAlign = ADC_DataAlign_Right;
		ADC_InitStructure.ADC_ExternalTrigConvEvent = ADC_ExternalTrigConvEvent_0;
		ADC_InitStructure.ADC_ExternalTrigEventEdge = ADC_ExternalTrigInjecEventEdge_None;
		ADC_InitStructure.ADC_NbrOfRegChannel = 1;
		ADC_InitStructure.ADC_OverrunMode = ADC_OverrunMode_Disable;
		ADC_InitStructure.ADC_Resolution = ADC_Resolution_12b;

		ADC_Init(ADC1, &ADC_InitStructure);

		ADC_RegularChannelConfig(ADC1, LINE_CAMERA_A_CH, 1,  ADC_SampleTime_1Cycles5);

		ADC_Cmd(ADC1, ENABLE);

		RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3, ENABLE);


		TIM_TimeBaseInitTypeDef timer;
		timer.TIM_Prescaler = 280;
		timer.TIM_CounterMode = TIM_CounterMode_Up;
		timer.TIM_Period = 33 - 1;
		timer.TIM_ClockDivision = TIM_CKD_DIV1;
		timer.TIM_RepetitionCounter = 0;
		TIM_TimeBaseInit(TIM3, &timer);

		TIM_Cmd(TIM3, ENABLE);

		TIM3->DIER |= TIM_DIER_UIE; // Enable interrupt on update event

		NVIC_InitTypeDef nvicStructure;
		nvicStructure.NVIC_IRQChannel = TIM3_IRQn;
		nvicStructure.NVIC_IRQChannelPreemptionPriority = 0;
		nvicStructure.NVIC_IRQChannelSubPriority = 1;
		nvicStructure.NVIC_IRQChannelCmd = ENABLE;
		NVIC_Init(&nvicStructure);
}

struct sLineCamera* CCamera::camera_get()
{
	return &g_camera;
}

uint32_t CCamera::camera_read()
{
	unsigned int i;

	if (g_camera.frame_flag == 0)
		return 0;

	for (i = 0; i < LINE_CAMERA_PIXELS_COUNT; i++)
			g_camera.pixels[i] = g_camera.pixels_raw[i];

	g_camera.frame_flag = 0;

	int average = 0;
	for (i = 0; i < LINE_CAMERA_PIXELS_COUNT; i++)
		average+= g_camera.pixels[i];

	average/=(int)LINE_CAMERA_PIXELS_COUNT;

	g_camera.average = average;

	for (i = 0; i < LINE_CAMERA_PIXELS_COUNT; i++)
		g_camera.pixels[i]-= average;

	for (i = 0; i < LINE_CAMERA_PIXELS_COUNT; i++)
		if (g_camera.pixels[i] < 0)
			g_camera.pixels[i] = 1;
		else
			g_camera.pixels[i] = 0;


	int max_length = 0;
	int length = 0;
	int max_length_position = LINE_CAMERA_PIXELS_COUNT*10;

	unsigned int state = 0;

	for (i = 1; i < LINE_CAMERA_PIXELS_COUNT; i++)
	{
		switch (state)
		{
			case 0:
							length = 0;
							if ((g_camera.pixels[i-1] == 0) && (g_camera.pixels[i] == 1))
							{
								length++;
								state = 1;
							}

							break;

			case 1:
							if (g_camera.pixels[i] == 1)
								length++;
							else
							{
								if (length > max_length)
								{
									max_length = length;
									max_length_position = i;
								}

								state = 0;
							}
							break;
		}
	}

	g_camera.flag = 0;
	if ((max_length > 3) && (g_camera.average > 400))
	{
		g_camera.flag = CAMERA_ON_LINE;
		g_camera.line_position = max_length_position - max_length/2 - LINE_CAMERA_PIXELS_COUNT/2;
	}

	return 1;
}


extern "C" void TIM3_IRQHandler()
{
  if (TIM_GetITStatus(TIM3, TIM_IT_Update) != RESET)
  {
    TIM_ClearITPendingBit(TIM3, TIM_IT_Update);

  	switch (g_camera.state)
  	{
  	 		case 0 :
  							LINE_CAMERA_GPIO->BRR = LINE_CAMERA_CLK;    // 	CLK = 0	*/
  							LINE_CAMERA_GPIO->BSRR = LINE_CAMERA_SI;   	// 	SI = 1	*/

  							g_camera.state = 1;
  							g_camera.frame_flag = 1;
  							break;

  			case 1:
  							LINE_CAMERA_GPIO->BSRR = LINE_CAMERA_CLK;   // CLK = 1*/
  							g_camera.state = 2;
  							break;

  			case 2:
  							LINE_CAMERA_GPIO->BRR = LINE_CAMERA_SI;   // SI = 0*/
  							g_camera.state = 4;
  							break;


  			default:
  							if (g_camera.state&1)
  							{
  									g_camera.pixels_raw[(g_camera.state - 4)/2] = ADC1->DR;	// read converted value*/
  									LINE_CAMERA_GPIO->BRR = LINE_CAMERA_CLK;    // CLK = 0*/
  									g_camera.state++;

  									if (g_camera.state >= 260)
  											g_camera.state = 0;
  							}
  							else
  							{
  									LINE_CAMERA_GPIO->BSRR = LINE_CAMERA_CLK;   // CLK = 1*/
  									g_camera.state++;

  									ADC1->CR |= ADC_CR_ADSTART;		// start conversion*/
  							}

  							break;
  	}
  }
}
