#ifndef _PID_H_
#define _PID_H_

#include <stdint.h>


class CPID
{
  private:
    int32_t e0, e1, e2;
    int32_t k0, k1, k2;
    int32_t u, output_range;

  public:
    CPID(int32_t kp, int32_t ki, int32_t kd, int32_t output_range);
    ~CPID();

    void init(int32_t kp, int32_t ki, int32_t kd, int32_t output_range);

    int32_t process(int32_t error);
};


#endif
