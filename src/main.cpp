#include <device.h>
#include <kodama.h>

#include "usr/demo.h"

int main()
{
  sytem_clock_init();

  if (kodama.init() != 0)
    kodama.error_func();


  kodama.set_dt(10);
  kodama.sleep();


  while (1)
  {
    if (kodama.gpio_in(KEY) != 0)
    {
      kodama.wakeup();

      //hello_world();
      //basic_line_follower();
      reinforcement_learning_line_follower();
    }

    kodama.gpio_on(LED_0);
    kodama.delay_ms(10);

    kodama.gpio_off(LED_0);
    kodama.delay_ms(300);

    kodama.printf("idle %u\n", kodama.get_time());
  }
}
