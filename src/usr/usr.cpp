#include "usr.h"

#include <kodama.h>
#include <suzuha_os.h>

#define SENSOR_SAMPLING_PERIOD       5

class CKodama kodama;



/*
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
*/


void print_debug()
{
  uint32_t i;

  kodama.gpio_on(LED_0);

  kodama.printf("\n");

  kodama.printf("system time %u\n", kodama.get_time());

  kodama.printf("encoders %i %i\n", kodama.get_left_encoder(), kodama.get_right_encoder());
  kodama.printf("angles %i %i %i\n", kodama.get_imu_result()->roll, kodama.get_imu_result()->pitch, kodama.get_imu_result()->yaw);
  kodama.printf("acc  %i %i %i\n", kodama.get_imu_result()->ax, kodama.get_imu_result()->ay, kodama.get_imu_result()->az);
  kodama.printf("gyro %i %i %i\n", kodama.get_imu_result()->gx, kodama.get_imu_result()->gy, kodama.get_imu_result()->gz);
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


void robot_run()
{

  /*
  kodama.event_timer_set_period(0, SENSOR_SAMPLING_PERIOD);

  uint32_t cnt = 0;
  while (1)
  {
    uint32_t res = kodama.event_timer_check(0);
    if (res != 0)
    {
      kodama.imu_read();
      kodama.rgb_read();

      if (res >= SENSOR_SAMPLING_PERIOD)
        kodama.printf("sensor RT warning %u\n", res);

      cnt++;
      if ((cnt%50) == 0)
        print_debug();
    }
  }
  */

  kodama.rotate_robot(1800, SPEED_MAX/2, NULL);
  kodama.rotate_robot(-1800, SPEED_MAX/2, NULL);

  kodama.rotate_robot(-450, SPEED_MAX, NULL);
  kodama.rotate_robot(450, SPEED_MAX, NULL);


  while (1)
  {
    kodama.gpio_on(LED_0);
    kodama.delay_ms(10);

    kodama.gpio_off(LED_0);
    kodama.delay_ms(300);
  }
}

void usr_main()
{
  sytem_clock_init();
  lib_os_init();

  if (kodama.init() != 0)
    kodama.error_func();


  kodama.set_dt(10);


  while (1)
  {
    if (kodama.gpio_in(KEY) != 0)
      robot_run();

    kodama.gpio_on(LED_0);
    kodama.delay_ms(10);

    kodama.gpio_off(LED_0);
    kodama.delay_ms(300);

    kodama.printf("idle %u\n", kodama.get_time());
  }
}
