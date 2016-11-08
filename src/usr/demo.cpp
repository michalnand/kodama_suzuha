#include "demo.h"
#include <kodama.h>


void hello_world()
{
  kodama.rotate_robot(900, SPEED_MAX/2, NULL);
  kodama.rotate_robot(900, SPEED_MAX/2, NULL);
  kodama.rotate_robot(900, SPEED_MAX/2, NULL);
  kodama.rotate_robot(900, SPEED_MAX/2, NULL);


  kodama.rotate_robot(-900, SPEED_MAX/2, NULL);
  kodama.rotate_robot(-900, SPEED_MAX/2, NULL);
  kodama.rotate_robot(-900, SPEED_MAX/2, NULL);
  kodama.rotate_robot(-900, SPEED_MAX/2, NULL);

  while (1)
  {
    kodama.printf("system time %u [ms]\n", kodama.get_time());
    kodama.gpio_on(LED_0);
    kodama.delay_ms(10);

    kodama.gpio_off(LED_0);
    kodama.delay_ms(300);
  }
}

void basic_line_follower()
{
  CLinePosition line_position;

  kodama.event_timer_set_period(0, 10);


  class CPID pid(10.0, 0.0, 8.0, SPEED_MAX);

  while (1)
  {
    uint32_t res = kodama.event_timer_check(0);
    if (res == 0)
      continue;

    kodama.rgb_read();
    line_position.process(kodama.get_rgb_result());

    if (line_position.on_line() == 0)
    {
      kodama.set_motor(MOTOR_LEFT, -SPEED_MAX/4);
      kodama.set_motor(MOTOR_RIGHT, -SPEED_MAX/4);
      kodama.delay_ms(300);

      kodama.set_motor(MOTOR_LEFT, 0);
      kodama.set_motor(MOTOR_RIGHT, 0);
      kodama.delay_ms(100);
      continue;
    }

    int32_t speed = SPEED_MAX/4;
    int32_t dif_speed = (int32_t)pid.process(0.0 - line_position.get_line_position());

    kodama.set_motor(MOTOR_LEFT, dif_speed + speed);
    kodama.set_motor(MOTOR_RIGHT, -dif_speed + speed);
  }
}


#define STATE_SIZE            RGB_SENSORS_COUNT
#define ACTIONS_COUNT         ((uint32_t)3)
#define HARD_LOCATIONS_COUNT  ((uint32_t)8)


void reinforcement_learning_line_follower()
{
  CLinePosition line_position;

  kodama.event_timer_set_period(0, 10);

  class MathVector<STATE_SIZE> state;
  class MathVector<ACTIONS_COUNT> q_values;
  class AssociativeMemory <STATE_SIZE, ACTIONS_COUNT, HARD_LOCATIONS_COUNT> associative_memory;

  associative_memory.init();


  unsigned int i, j, action_id = 0;
  float reward = 0.0;


  while (1)
  {
    //obtain state
    kodama.rgb_read();


    line_position.process(kodama.get_rgb_result());
    line_position.get_vector(&state);


    //load current Q values
    associative_memory.load(state, q_values);


    //choose action
    action_id = 0;
    for (i = 0; i < q_values.size(); i++)
      if (q_values[i] > q_values[action_id])
        action_id = i;

    if ((math.rand()%100) < 20)
      action_id = math.rand()%ACTIONS_COUNT;

    //execute action
    switch (action_id)
    {
      case 0:
              kodama.set_motor(MOTOR_LEFT, SPEED_MAX/3);
              kodama.set_motor(MOTOR_RIGHT, SPEED_MAX/3);
              break;

      case 1:
              kodama.set_motor(MOTOR_LEFT, 0);
              kodama.set_motor(MOTOR_RIGHT, SPEED_MAX/3);
              break;

      case 2:
              kodama.set_motor(MOTOR_LEFT, SPEED_MAX/3);
              kodama.set_motor(MOTOR_RIGHT, 0);
              break;
    }


    kodama.delay_ms(50);

    //obatain reward from line position
    kodama.rgb_read();
    line_position.process(kodama.get_rgb_result());

    reward = (1.0 - math.abs(line_position.get_line_position())) - 0.5;

    //update it
    q_values[action_id] = reward; // + gamma*q_now;
    associative_memory.save(state, q_values);


    if (line_position.on_line() == 0)
    {
      kodama.set_motor(MOTOR_LEFT, -SPEED_MAX/3);
      kodama.set_motor(MOTOR_RIGHT, -SPEED_MAX/3);
      kodama.delay_ms(300);

      kodama.set_motor(MOTOR_LEFT, 0);
      kodama.set_motor(MOTOR_RIGHT, 0);
      kodama.delay_ms(100);
      continue;
    }
  }
}
