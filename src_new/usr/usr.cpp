#include "usr.h"
#include "image.h"

TGpio<TGPIOB, 5, GPIO_MODE_OUT> led;


void blink_idle()
{
  static unsigned int state = 0;
  if (state != 0)
  {
    state = 0;
    led = 1;
  }
  else
  {
    state = 1;
    led = 0;
  }
}

class CAPDS9950 rgb;

void sensor()
{
  rgb.read();

  terminal.printf("%u [%u %u %u] %u\n"  , rgb.result.a,
                                          rgb.result.r,
                                          rgb.result.g,
                                          rgb.result.b,
                                          rgb.result.proximity);
}

void usr_main()
{
  timer.add_task(blink_idle, 300, false);
  timer.add_task(sensor, 500);

  rgb.init();

  while (1)
  {
    timer.main();
  }
}


/*
TGpio<TGPIOB, 15, GPIO_MODE_OUT> led;
TGpio<TGPIOB, 9, GPIO_MODE_IN_PULLUP> key;

class CIMU imu;
class CMotorI2C motor;
class CSSD1306OLED display;
class CMLX90621 ir;

void blink_idle()
{
  static unsigned int state = 0;
  if (state != 0)
  {
    state = 0;
    led = 1;
  }
  else
  {
    state = 1;
    led = 0;
  }
}


void ir_demo()
{
  class PID<float> pid(PID_FRACTION*20.0, PID_FRACTION*0.0, PID_FRACTION*10.0, SPEED_MAX);

  while (1)
  {
    ir.read();

    float center_x = (2.0*ir.ir_result.center_x)/IR_POSITION_RANGE - 1.0;
    float center_y = (2.0*ir.ir_result.center_y)/IR_POSITION_RANGE - 1.0;

    if (ir.ir_result.max_value > (ir.ir_result.min_value+120))
    {
      int32_t speed = 0; // SPEED_MAX/4;
      int32_t dif_speed = (int32_t)pid.process(0.0 - (-center_x));

      motor.set_motor(MOTOR_LEFT, dif_speed + speed);
      motor.set_motor(MOTOR_RIGHT, -dif_speed + speed);
    }
    else
    {
      motor.set_motor(MOTOR_LEFT, 0);
      motor.set_motor(MOTOR_RIGHT, 0);
    }

    display.oled_lcd_clear();
    unsigned int j, i;

    for (j = 0; j < IR_HEIGHT; j++)
    {
      for (i = 0; i < IR_WIDTH; i++)
      {
        display.oled_put_square(i*SSD1306_WIDTH/IR_WIDTH, j*SSD1306_HEIGHT/(IR_HEIGHT),
                                  SSD1306_WIDTH / IR_WIDTH, SSD1306_HEIGHT /(IR_HEIGHT),
                                  ir.ir_result.pixels[j][i]);
      }
    }
    display.oled_lcd_refresh_part();

    timer.delay_ms(10);
  }
}


void usr_main()
{
//  SystemInit();

  imu.init();
  motor.init();
  motor.sleep();
  display.oled_lcd_init();
  ir.init();

  timer.add_task(blink_idle, 300, false);

  display.oled_lcd_put_bitmap(image_logo, 0);
  display.oled_lcd_refresh();
  timer.delay_ms(2000);

  display.oled_lcd_put_bitmap(aeris_logo, 0);
  display.oled_lcd_refresh();
  while (key != 0)
    __asm("nop");

  while (1)
  {
    ir_demo();
  }
}
*/
