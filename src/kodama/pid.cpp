#include "pid.h"

CPID::CPID(int32_t kp, int32_t ki, int32_t kd, int32_t output_range)
{
  init(kp, ki, kd, output_range);
}

CPID::~CPID()
{

}

void CPID::init(int32_t kp, int32_t ki, int32_t kd, int32_t output_range)
{
  e0 = 0;
  e1 = 0;
  e2 = 0;

  k0 = kp + ki + kd;
  k1 = -kp -2*kd;
  k2 = kd;

  u = 0;

  this->output_range = output_range;
}


int32_t CPID::process(int32_t error)
{
  e2 = e1;
  e1 = e0;
  e0 = error;


  u+= (k0*e0 + k1*e1 + k2*e2)/(int32_t)1024;

  if (u > output_range)
    u = output_range;
  if (u < -output_range)
    u = -output_range;

  return u;
}
