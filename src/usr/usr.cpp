#include "usr.h"

#include <kodama.h>
#include <suzuha_os.h>

#define SENSOR_THREAD_STACK_SIZE	          128
#define PRINT_THREAD_STACK_SIZE	            128
#define AI_THREAD_STACK_SIZE                128

thread_stack_t sensor_thread_stack[SENSOR_THREAD_STACK_SIZE];
thread_stack_t print_thread_stack[PRINT_THREAD_STACK_SIZE];
thread_stack_t ai_thread_stack[AI_THREAD_STACK_SIZE];

#define SENSOR_SAMPLING_PERIOD       20

class CKodama kodama;

void sensor_thread()
{
  kodama.event_timer_set_period(0, SENSOR_SAMPLING_PERIOD);

  uint8_t res;
  while (1)
  {
    res = kodama.event_timer_check(0);

    if (res != 0)
    {
      kodama.imu_read();
      kodama.rgb_read();

      if (res >= SENSOR_SAMPLING_PERIOD)
        kodama.printf("sensor RT warning %u\n", res);
    }
  }
}


void print_thread()
{
  kodama.event_timer_set_period(1, 500);

  unsigned int i;
  uint8_t res;

  kodama.set_motor(MOTOR_LEFT, SPEED_MAX);
  kodama.delay_ms(300);

  kodama.set_motor(MOTOR_LEFT, -SPEED_MAX);
  kodama.delay_ms(300);

  kodama.set_motor(MOTOR_LEFT, 0);
  kodama.delay_ms(300);


  kodama.set_motor(MOTOR_RIGHT, SPEED_MAX);
  kodama.delay_ms(300);

  kodama.set_motor(MOTOR_RIGHT, -SPEED_MAX);
  kodama.delay_ms(300);

  kodama.set_motor(MOTOR_RIGHT, 0);
  kodama.delay_ms(300);


  kodama.set_motor(MOTOR_RIGHT, SPEED_MAX);
  kodama.set_motor(MOTOR_LEFT, SPEED_MAX);
  kodama.delay_ms(300);

  kodama.set_motor(MOTOR_RIGHT, 0);
  kodama.set_motor(MOTOR_LEFT, 0);

  while (1)
  {
    if ((res = kodama.event_timer_check(1)) != 0)
    {
      kodama.gpio_on(LED_0);

      kodama.printf("\n");


      kodama.printf("system time %u\n", kodama.get_time());
      kodama.printf("encoders %i %i\n", kodama.get_left_encoder(), kodama.get_right_encoder());
      kodama.printf("angles %i %i %i\n", kodama.get_imu_result()->roll, kodama.get_imu_result()->pitch, kodama.get_imu_result()->yaw);
      kodama.printf("\n");


      struct sRGBResult *rgb_result = kodama.get_rgb_result();

      kodama.printf("\n");
      for (i = 0; i < RGB_SENSORS_COUNT; i++)
        kodama.printf("%i ", rgb_result->r[i]);

      kodama.printf("\n");
      for (i = 0; i < RGB_SENSORS_COUNT; i++)
        kodama.printf("%i ", rgb_result->g[i]);

      kodama.printf("\n");
      for (i = 0; i < RGB_SENSORS_COUNT; i++)
        kodama.printf("%i ", rgb_result->b[i]);

      kodama.printf("\n");
      kodama.printf("\n");



      kodama.printf("\n");
      for (i = 0; i < RGB_SENSORS_COUNT; i++)
        kodama.printf("%i ", rgb_result->r_normalised[i]);

      kodama.printf("\n");
      for (i = 0; i < RGB_SENSORS_COUNT; i++)
        kodama.printf("%i ", rgb_result->g_normalised[i]);

      kodama.printf("\n");
      for (i = 0; i < RGB_SENSORS_COUNT; i++)
        kodama.printf("%i ", rgb_result->b_normalised[i]);


      kodama.gpio_off(LED_0);

    }
  }
}

void usr_main()
{
  sytem_clock_init();
  lib_os_init();

  if (kodama.init() != 0)
    kodama.error_func();


  while (1)
  {
    if (kodama.gpio_in(KEY) != 0)
    {
      create_thread(sensor_thread, sensor_thread_stack, sizeof(sensor_thread_stack), PRIORITY_MAX);
      create_thread(print_thread, print_thread_stack, sizeof(print_thread_stack), PRIORITY_MAX);
      break;
    }

    kodama.gpio_on(LED_0);
    kodama.delay_ms(10);

    kodama.gpio_off(LED_0);
    kodama.delay_ms(300);

    kodama.printf("idle %u\n", kodama.get_time());
  }

  kernel_start();
}
