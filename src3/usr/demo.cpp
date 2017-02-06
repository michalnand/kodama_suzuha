#include "demo.h"
#include <kodama.h>

#include "learning_line_follower.h"


class CDemo demo;


CDemo::CDemo()
{

}

CDemo::~CDemo()
{

}

void CDemo::init()
{

}

void CDemo::run(unsigned int demo_id)
{
  switch (demo_id)
  {
    case DEMO_HELLO_WORLD:
                          moves_task();
                          blink_task();
                          break;

    case DEMO_BASIC_LINE_FOLLOWER:
                          basic_line_follower_task();
                          break;

    case DEMO_LEARNING_LINE_FOLLOWER:
                          learning_line_follower.run();
                          break;

    case DEMO_IR_SENSOR:
                          ir_sensor_task();
                          break;
  }
}

void CDemo::blink_task()
{
  while (1)
  {
    kodama.gpio_on(LED_0);
    kodama.printf("system time %u [ms]\n", timer.get_time());

    timer.delay_ms(10);
    kodama.gpio_off(LED_0);

    timer.delay_ms(800);

  }
}


void CDemo::moves_task()
{
  int32_t speed = SPEED_MAX;


  kodama.set_motors(speed, 0);
  timer.delay_ms(1500);

  kodama.set_motors(-speed, 0);
  timer.delay_ms(1500);

  kodama.set_motors(0, speed);
  timer.delay_ms(1500);

  kodama.set_motors(0, -speed);
  timer.delay_ms(1500);



  kodama.set_motors(speed, -speed);
  timer.delay_ms(1500);

  kodama.set_motors(-speed, speed);
  timer.delay_ms(1500);

  kodama.set_motors(speed, speed);
  timer.delay_ms(1500);

  kodama.set_motors(-speed, -speed);
  timer.delay_ms(1500);

  kodama.set_motors(0, 0);

/*
  kodama.rotate_robot( 900, SPEED_MAX/2, NULL);
  kodama.rotate_robot( 900, SPEED_MAX/2, NULL);
  kodama.rotate_robot( 900, SPEED_MAX/2, NULL);
  kodama.rotate_robot( 900, SPEED_MAX/2, NULL);


  kodama.rotate_robot(-900, SPEED_MAX/2, NULL);
  kodama.rotate_robot(-900, SPEED_MAX/2, NULL);
  kodama.rotate_robot(-900, SPEED_MAX/2, NULL);
  kodama.rotate_robot(-900, SPEED_MAX/2, NULL);
*/
}



void CDemo::basic_line_follower_task()
{
  #ifdef USE_RGB
  CLinePosition line_position;
  class PID<float> pid(10.0, 0.0, 8.0, SPEED_MAX);

  timer.event_timer_set_period(0, 10);

  while (1)
  {
    if (timer.event_timer_check(0) == 0)
      continue;

    kodama.rgb_read();
    line_position.process(kodama.rgb_get());

    kodama.printf("%i %i \n", line_position.on_line(), (int)(1000*line_position.get_line_position()));

    if (line_position.on_line() != 0)
    {
      int32_t speed = SPEED_MAX/4;
      int32_t dif_speed = (int32_t)pid.process(0.0 - line_position.get_line_position());

      kodama.set_motor(MOTOR_LEFT, dif_speed + speed);
      kodama.set_motor(MOTOR_RIGHT, -dif_speed + speed);
    }
    else
    {
      kodama.set_motor(MOTOR_LEFT, -SPEED_MAX/4);
      kodama.set_motor(MOTOR_RIGHT, -SPEED_MAX/4);
      timer.delay_ms(300);

      kodama.set_motor(MOTOR_LEFT, 0);
      kodama.set_motor(MOTOR_RIGHT, 0);
      timer.delay_ms(100);
    }
  }
  #endif
}


void CDemo::ir_sensor_task()
{
  #ifdef USE_MLX90621

  CLinePosition line_position;
  class PID<float> pid(PID_FRACTION*15.0, PID_FRACTION*0.0, PID_FRACTION*10.0, SPEED_MAX);

  //class AdaptivePID<float> pid(PID_FRACTION*5.0, PID_FRACTION*0.0, PID_FRACTION*0.0, SPEED_MAX);


  while (1)
  {
    kodama.ir_refresh();

    float center_x = (2.0*kodama.ir_result.center_x)/IR_POSITION_RANGE - 1.0;
    float center_y = (2.0*kodama.ir_result.center_y)/IR_POSITION_RANGE - 1.0;

    if (kodama.ir_result.max_value > (kodama.ir_result.min_value+120))
    {
      int32_t speed = 0; // SPEED_MAX/4;
      int32_t dif_speed = (int32_t)pid.process(0.0 - (-center_x));


      kodama.set_motor(MOTOR_LEFT, dif_speed + speed);
      kodama.set_motor(MOTOR_RIGHT, -dif_speed + speed);
    }
    else
    {
      kodama.set_motor(MOTOR_LEFT, 0);
      kodama.set_motor(MOTOR_RIGHT, 0);
    }



    kodama.printf("\n\n");
    kodama.printf("max %i min %i average %i\n", kodama.ir_result.max_value, kodama.ir_result.min_value, kodama.ir_result.average_value);
    kodama.printf("position [ %f %f ] \n", center_x, center_y);

    #ifdef USE_OLED_LCD
    kodama.oled_lcd_clear();
    unsigned int j, i;

    for (j = 0; j < IR_HEIGHT; j++)
    {
      for (i = 0; i < IR_WIDTH; i++)
      {
        kodama.oled_put_square(i*SSD1306_WIDTH/IR_WIDTH, j*SSD1306_HEIGHT/(IR_HEIGHT), SSD1306_WIDTH / IR_WIDTH, SSD1306_HEIGHT /(IR_HEIGHT), kodama.ir_result.pixels[j][i]);
      }
    }
    kodama.oled_lcd_refresh_part();
    #endif

    timer.delay_ms(10);
  }
  #endif
}
