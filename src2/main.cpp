#include <i2c.h>
#include <gpio.h>
#include <pid.h>

int main()
{


  class CPID<int> pida(3, 1, 4, 128);
  class CPID<int> pidb(1, 2, 3, 128);

  int error = 0;
  while (1)
  {
    error+= 3;

    PORTB = pida.process(error);
    PORTC = pidb.process(error);

  }
  return 0;
}
