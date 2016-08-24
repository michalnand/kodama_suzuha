#include "usr.h"

#include <kodama.h>
#include <suzuha_os.h>

class CKodama robot;

#define SENSOR_THREAD_STACK_SIZE	          128
#define PRINT_THREAD_STACK_SIZE	            128
#define AI_THREAD_STACK_SIZE                128

thread_stack_t sensor_thread_stack[SENSOR_THREAD_STACK_SIZE];
thread_stack_t print_thread_stack[PRINT_THREAD_STACK_SIZE];
thread_stack_t ai_thread_stack[AI_THREAD_STACK_SIZE];


#define IMU_SAMPLING_PERIOD       10

void sensor_thread()
{

  robot.event_timer_set_period(0, IMU_SAMPLING_PERIOD);

  uint8_t res;
  while (1)
  {
    res = robot.event_timer_cc(0);

    if (res != 0)
    {
      robot.imu_read();
      robot.rgb_read();
      robot.motor_refresh();

      if (res >= IMU_SAMPLING_PERIOD)
        robot.printf("sensor RT warning %u\n", res);

    }
  }
}

void ai_thread()
{
  robot.motor_set(MOTOR_LEFT, SPEED_MAX); robot.motor_set(MOTOR_RIGHT, 0);
  robot.delay_ms(800);


  robot.motor_set(MOTOR_LEFT, -SPEED_MAX); robot.motor_set(MOTOR_RIGHT, 0);
  robot.delay_ms(800);


  robot.motor_set(MOTOR_LEFT, 0); robot.motor_set(MOTOR_RIGHT, SPEED_MAX);
  robot.delay_ms(800);


  robot.motor_set(MOTOR_LEFT, 0); robot.motor_set(MOTOR_RIGHT, -SPEED_MAX);
  robot.delay_ms(800);


  robot.motor_set(MOTOR_LEFT, SPEED_MAX); robot.motor_set(MOTOR_RIGHT, SPEED_MAX);
  robot.delay_ms(800);


  robot.motor_set(MOTOR_LEFT, -SPEED_MAX); robot.motor_set(MOTOR_RIGHT, -SPEED_MAX);
  robot.delay_ms(800);


  robot.motor_set(MOTOR_LEFT, 0); robot.motor_set(MOTOR_RIGHT, 0);

  while (1)
  {
    robot.delay_ms(10);
  }
}

void print_thread()
{
  robot.event_timer_set_period(1, 500);

  unsigned int i;
  uint8_t res;

  while (1)
  {
    if ((res = robot.event_timer_cc(1)) != 0)
    {
      robot.gpio_on(LED_0);

      robot.printf("system time %u\n", robot.get_time());
      robot.printf("encoders %i %i\n", robot.get_left_encoder(), robot.get_right_encoder());
      robot.printf("angles %i %i %i\n", robot.imu_get()->roll, robot.imu_get()->pitch, robot.imu_get()->yaw);
      robot.printf("\n");


      struct sRGBResult *rgb_result = robot.get_rgb_result();

      robot.printf("\n");
      for (i = 0; i < RGB_SENSORS_COUNT; i++)
        robot.printf("%i ", rgb_result->r[i]);

      robot.printf("\n");
      for (i = 0; i < RGB_SENSORS_COUNT; i++)
        robot.printf("%i ", rgb_result->g[i]);

      robot.printf("\n");
      for (i = 0; i < RGB_SENSORS_COUNT; i++)
        robot.printf("%i ", rgb_result->b[i]);

      robot.printf("\n");
      robot.printf("\n");



      robot.printf("\n");
      for (i = 0; i < RGB_SENSORS_COUNT; i++)
        robot.printf("%i ", rgb_result->r_normalised[i]);

      robot.printf("\n");
      for (i = 0; i < RGB_SENSORS_COUNT; i++)
        robot.printf("%i ", rgb_result->g_normalised[i]);

      robot.printf("\n");
      for (i = 0; i < RGB_SENSORS_COUNT; i++)
        robot.printf("%i ", rgb_result->b_normalised[i]);


      robot.gpio_off(LED_0);

    }
  }
}

void usr_main()
{

  sytem_clock_init();
  lib_os_init();

  int32_t i, res;


  for (i = 0; i < 8; i++)
  {
    res = robot.init();

    robot.printf("kodama init %i %i : ", i, res);

    if (res == 0)
    {
      robot.printf(" [OK]\n");
      break;
    }
    else
      robot.printf(" [FAILED]\n");
  }

  if (res != 0)
    robot.error();

  robot.sleep();

  while (1)
  {
    if (robot.gpio_in(KEY) != 0)
    {
      robot.wakeup();

      create_thread(sensor_thread, sensor_thread_stack, sizeof(sensor_thread_stack), PRIORITY_MAX);
      create_thread(ai_thread, ai_thread_stack, sizeof(ai_thread_stack), PRIORITY_MAX);
      create_thread(print_thread, print_thread_stack, sizeof(print_thread_stack), PRIORITY_MAX);
      break;
    }

    robot.gpio_on(LED_0);
    robot.delay_ms(10);

    robot.gpio_off(LED_0);
    robot.delay_ms(300);
  }

  kernel_start();
}
