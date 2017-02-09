#include "line_position.h"



CLinePosition::CLinePosition()
{


}

CLinePosition::~CLinePosition()
{


}

void CLinePosition::read_line_position()
{
  read();

  unsigned int i, min_i = 0;

  for (i = 0; i < RGB_SENSOR_COUNT; i++)
    if (result[i].a < result[min_i].a)
      min_i = i;

  if (result[min_i].a < 0)
  {
    switch (min_i)
    {
      case 0: line_result.position = -2; break;
      case 1: line_result.position = -1; break;
      case 2: line_result.position = 1; break;
      case 3: line_result.position = 2; break;
    }

    line_result.flags = 1;
  }
  else
    line_result.flags = 0;
}

uint16_t CLinePosition::init_line_position()
{
  uint16_t rgb_init_res = init();

  line_result.position = 0;
  line_result.flags = 0;
  return rgb_init_res;
}
