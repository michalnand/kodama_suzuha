#include "learning_line_follower.h"


CLearningLineFollower::CLearningLineFollower()
{
  init();
}

CLearningLineFollower::~CLearningLineFollower()
{

}

void CLearningLineFollower::init()
{
  rl.init();
}


void CLearningLineFollower::main()
{
  CLinePosition line_position;

  MathVector<STATE_SIZE> state;

  while (1)
  {
    //obtain state -> read sensors and fill state vector
    kodama.rgb_read();

    line_position.process(kodama.get_rgb_result());
    line_position.get_vector(&state);

    //select action, using loaded learned q-values from current state
    unsigned int action_id = rl.process(state);

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


    //dt delay
    kodama.delay_ms(50);

    //obatain reward from current line position
    kodama.rgb_read();
    line_position.process(kodama.get_rgb_result());

      //just normalise reward into <-0.5 .. 0.5>
    float reward = (1.0 - math.abs(line_position.get_line_position())) - 0.5;

    //learn from reward (update Q-values from Q(state, action))
    rl.process_learning(reward);

    //go back if robot loose line
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
