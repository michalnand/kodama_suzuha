#ifndef _CAMERA_H_
#define _CAMERA_H_

#include <device.h>

#define LINE_CAMERA_AO_GPIO GPIOC
#define LINE_CAMERA_AO	 		(1<<0)		             // PC0 - analog input
#define LINE_CAMERA_A_CH    (ADC_Channel_6)				 // ADC12 channel 6

#define LINE_CAMERA_GPIO		GPIOB
#define LINE_CAMERA_CLK 		(1<<8)
#define LINE_CAMERA_SI	 		(1<<9)

#define LINE_CAMERA_PIXELS_COUNT	((unsigned int)128)

#define  CAMERA_ON_LINE 		      ((unsigned int)(1<<0))

struct sLineCamera
{
	unsigned int state, flag, frame_flag;
  int line_position;
	int average;
	int16_t pixels_raw[LINE_CAMERA_PIXELS_COUNT];
	int16_t pixels[LINE_CAMERA_PIXELS_COUNT];
};

class CCamera
{
  public:
    CCamera();
    ~CCamera();

    void init();

    struct sLineCamera* get();
    uint32_t read();

};

#endif
