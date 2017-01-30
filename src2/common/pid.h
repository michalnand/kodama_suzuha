#ifndef _PID_H_
#define _PID_H_

#include <stdint.h>

/* @breef discrete PID controller implementation with antiwindup

   in constructor enter
   kp, ki, kd
   and output limitatation output_range_
   output will be limited into interval <-output_range_, output_range_>

   for fixed point arithmetics call class CPID<int> my_pid(kp, ki, kd, limit)
   for float arithmetics (default) call class CPID<float> my_pid(kp, ki, kd, limit)

   @note kp, ki, kd constant are divided by PID_FRACTION value;
   if you wish proporional gain KP = 3.74, you enter kp = 3.74*PID_FRACTION
   (similary ki and kd)
*/


#define PID_FRACTION      32

template <class int_type = float> class CPID
{
  private:
    int_type e0, e1, e2;
    int_type k0, k1, k2;
    int_type u, output_range;

  public:
    //create controller
    //@param kp - proportional constant, kp = PID_FRACTION, means kp = gain x1
    //@param ki - integration constant, ki = PID_FRACTION, means ki = gain x1
    //@param kd - derivative constant, kd = PID_FRACTION, means kd = gain x1
    //@param output_range - maximum otput range, limits output into <-output_range, output_range>
    CPID(int_type kp, int_type ki, int_type kd, int_type output_range_)
    {
      init(kp, ki, kd, output_range_);
    }

    ~CPID()
    {

    }

    //new initialization of parameters see CPID
    void init(int_type kp, int_type ki, int_type kd, int_type output_range_)
    {
      e0 = 0;
      e1 = 0;
      e2 = 0;

      k0 = kp + ki + kd;
      k1 = -kp - kd;
      k2 = kd;

      u = 0;

      this->output_range = output_range_;
    }

    //process one discrete controller step
    //@param error, required_value - meassured_value
    //return controller output
    int_type process(int_type error)
    {
      e2 = e1;
      e1 = e0;
      e0 = error;

      u+= (k0*e0 + k1*e1 + k2*e2)/PID_FRACTION;

      if (u > output_range)
        u = output_range;

      if (u < -output_range)
        u = -output_range;

      return u;
    }
};


#endif
