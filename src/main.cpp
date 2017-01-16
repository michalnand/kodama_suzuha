#include <device.h>
#include <kodama.h>

#include "usr/demo.h"
#include <image.h>
#include <i2c.h>

/*
#define UBLOX_GPS_ADDRESS   ((unsigned char)0x42<<1)

void gps_test()
{
  unsigned char tmp = kodama.i2c.read_reg(UBLOX_GPS_ADDRESS, 0xFF);
  if (tmp != 0xff)
  {
    kodama.printf("%c", tmp&127);
    //kodama.printf("[ %c %x ]", tmp, tmp);
  }
}
*/

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

  kodama.oled_lcd_put_bitmap(image_logo);
  timer.delay_ms(2500);
  kodama.oled_lcd_put_bitmap(aeris_logo);

  unsigned int aeris_logo_offset = 0;
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
      //demo.run(DEMO_BASIC_LINE_FOLLOWER);
      //demo.run(DEMO_LEARNING_LINE_FOLLOWER);
      demo.run(DEMO_IR_SENSOR);

    }

    kodama.oled_lcd_put_bitmap(aeris_logo, aeris_logo_offset++);

    timer.delay_ms(50);
    kodama.printf("system idle %u\n", timer.get_time());

    kodama.imu_read();
    kodama.printf("%i %i %i\n", kodama.imu_get()->roll, kodama.imu_get()->pitch, kodama.imu_get()->yaw);

  }
}
