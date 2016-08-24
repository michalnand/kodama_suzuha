#ifndef _PID_H_
#define _PID_H_

#include <stdint.h>


class CPID
{
  private:
    float e0, e1, e2;
    float k0, k1, k2;
    float u, output_range;

  public:
    CPID(float kp, float ki, float kd, float output_range);
    ~CPID();

    void init(float kp, float ki, float kd, float output_range);

    float process(float error);
};


#endif
