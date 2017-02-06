#ifndef _ADAPTIVE_PID_H_
#define _ADAPTIVE_PID_H_

#include "pid.h"


template <class int_type = float> class AdaptivePID
{
  private:
    PID<int_type> pid, pid_adaptive;

    int_type pid_output_prev;
    int_type pid_output;
    int_type pid_adaptive_output;

  public:
    AdaptivePID(int_type kp = 0, int_type ki = 0, int_type kd = 0, int_type output_range_ = 0)
    {
      init(kp, ki, kd, output_range_);
    }

    ~AdaptivePID()
    {

    }

    void init(int_type kp, int_type ki, int_type kd, int_type output_range_)
    {
      pid_output_prev = 0;
      pid_output = 0;
      pid_adaptive_output = 0;

      pid.init(kp, ki, kd, output_range_);
      pid_adaptive.init(0, 0, 0, output_range_);
    }

    int_type process(int_type error, bool adaptive = false)
    {
      pid_output_prev = pid_output;
      pid_output = pid.process(error);

      if (adaptive)
      {
        pid_adaptive_output = pid_adaptive.process(error);

        int_type adaptive_error = pid_output - pid_output_prev;
        int_type learning_rate = 0.01;

        pid_adaptive.k0+= learning_rate*adaptive_error*pid_adaptive.e0;
        pid_adaptive.k1+= learning_rate*adaptive_error*pid_adaptive.e1;
        pid_adaptive.k2+= learning_rate*adaptive_error*pid_adaptive.e2;
      }

      return (pid_output + pid_adaptive_output);
    }
};


#endif
