#include <device.h>
#include <kodama.h>

#include "usr/demo.h"


int main()
{
  sytem_clock_init();

  if (kodama.init() != 0)
  {
    // kodama.error_func();
  }

  kodama.set_dt(10);
  kodama.sleep();

  i_led.init();
  i_led.set(I_LED_MODE_BREATH, 1500);

  kodama.oled_lcd_demo();


  while (1)
  {
    if (kodama.gpio_in(KEY) != 0)
    {
      i_led.set(I_LED_MODE_BLINKING, 200);
      timer.delay_ms(200);

    //wifi.client_demo();

      kodama.wakeup();

      demo.init();
      //demo.run(DEMO_HELLO_WORLD);
      demo.run(DEMO_BASIC_LINE_FOLLOWER);
      //demo.run(DEMO_LEARNING_LINE_FOLLOWER);
    }


    timer.delay_ms(300);
    kodama.printf("system idle %u\n", timer.get_time());
  }
}
