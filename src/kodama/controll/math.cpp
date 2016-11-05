#include "math.h"

class CMath math;

CMath::CMath()
{

}

CMath::~CMath()
{

}

float CMath::abs(float x)
{
  if (x < 0.0)
    x = -x;
  return x;
}

float sgn(float x)
{
  if (x > 0.0)
    return 1.0;
  if (x < 0.0)
    return -1.0;
  return 0.0;
}

float map(float x, float source_min, float source_max, float dest_min, float dest_max)
{
  float k = (dest_max - dest_min)/(source_max - source_min);
  float q = dest_max - k*source_max;

  return k*x + q;
}
