#include "usr.h"

#include "../kodama/kodama.h"
#include "../suzuha/suzuha_os.h"

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

      if (res >= IMU_SAMPLING_PERIOD)
        robot.printf("sensor RT warning %u\n", res);

    }
  }
}

void ai_thread()
{
  while (1)
  {
    robot.delay_ms(10);
  }
}

void print_thread()
{
  robot.event_timer_set_period(1, 300);

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

      robot.gpio_off(LED_0);

      if (res > RT_WARNING_TRESHOLD)
        robot.printf("print RT warning %u\n", res);
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


  create_thread(sensor_thread, sensor_thread_stack, sizeof(sensor_thread_stack), PRIORITY_MAX);
  create_thread(ai_thread, ai_thread_stack, sizeof(ai_thread_stack), PRIORITY_MAX);

  create_thread(print_thread, print_thread_stack, sizeof(print_thread_stack), PRIORITY_MAX);

  kernel_start();
}
