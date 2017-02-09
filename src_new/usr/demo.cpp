#include "demo.h"
#include "image.h"

TGpio<KEY_GPIO, KEY_PIN, GPIO_MODE_IN_PULLUP> key;
TGpio<LED_GPIO, LED_PIN, GPIO_MODE_OUT> led;

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


void learning_line_follower_demo()
{
  SystemInit();
  terminal.printf("READY\n");
  timer.delay_ms(100);

  class CMotorI2C motor;
  class CSSD1306OLED display;
  class CMLX90621 ir;


  motor.init();
  motor.sleep();

  display.oled_lcd_init();

  class CLinePosition line_position;

  uint16_t line_position_res = line_position.init();
  terminal.printf("rgb init res %u\n", line_position_res);


  timer.add_task(blink_idle, 200, false);

  display.oled_lcd_put_bitmap(image_logo, 0);
  display.oled_lcd_refresh();

  timer.delay_ms(200);

  display.oled_lcd_put_bitmap(aeris_logo, 0);
  display.oled_lcd_refresh();

  class PID<float> pid(PID_FRACTION*5.0, PID_FRACTION*0.0, PID_FRACTION*8.0, SPEED_MAX);

  while (key != 0)
      __asm("nop"); //wait for key press

  while (1)
  {
    line_position.read_line_position();



    if (line_position.line_result.flags != 0)
    {
      int32_t speed = SPEED_MAX/4;
      int32_t dif_speed = (int32_t)pid.process(0.0 - line_position.line_result.position);

      motor.set_motor(MOTOR_LEFT, dif_speed + speed);
      motor.set_motor(MOTOR_RIGHT, -dif_speed + speed);
    }
    else
    {
      motor.set_motor(MOTOR_LEFT, -SPEED_MAX/4);
      motor.set_motor(MOTOR_RIGHT, -SPEED_MAX/4);
      timer.delay_ms(300);

      motor.set_motor(MOTOR_LEFT, 0);
      motor.set_motor(MOTOR_RIGHT, 0);
      timer.delay_ms(100);
    }


    terminal.printf(">>> %i %u \n", line_position.line_result.position, line_position.line_result.flags);
    for (unsigned int i = 0; i < RGB_SENSOR_COUNT; i++)
      terminal.printf("%i ", line_position.result[i].a);

    terminal.printf("\n");
    timer.delay_ms(50);
  }

}



void ir_demo()
{
  SystemInit();
  terminal.printf("READY\n");
  timer.delay_ms(100);

  class CMotorI2C motor;
  class CSSD1306OLED display;
  class CMLX90621 ir;


  motor.init();
  motor.sleep();

  display.oled_lcd_init();
  ir.init();

  timer.add_task(blink_idle, 200, false);

  display.oled_lcd_put_bitmap(image_logo, 0);
  display.oled_lcd_refresh();

  timer.delay_ms(200);

  display.oled_lcd_put_bitmap(aeris_logo, 0);
  display.oled_lcd_refresh();


  class PID<float> pid(PID_FRACTION*20.0, PID_FRACTION*0.0, PID_FRACTION*10.0, SPEED_MAX);

  while (key != 0)
      __asm("nop"); //wait for key press


  while (1)
  {
    led = 1;
    ir.read();
/*
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
*/

    float center_x = (2.0*ir.ir_result.center_x)/IR_POSITION_RANGE - 1.0;
    float center_y = (2.0*ir.ir_result.center_y)/IR_POSITION_RANGE - 1.0;

    if (ir.ir_result.max_value > (ir.ir_result.min_value+120))
    {
      int32_t speed = 0; // SPEED_MAX/4;
      int32_t dif_speed = pid.process(0.0 - (-center_x));

      motor.set_motor(MOTOR_LEFT, dif_speed + speed);
      motor.set_motor(MOTOR_RIGHT, -dif_speed + speed);
    }
    else
    {
      motor.set_motor(MOTOR_LEFT, 0);
      motor.set_motor(MOTOR_RIGHT, 0);
    }
  }
}
