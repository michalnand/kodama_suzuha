#ifndef _LEARNING_LINE_FOLLOWER_
#define _LEARNING_LINE_FOLLOWER_

#define STATE_SIZE            RGB_SENSORS_COUNT
#define ACTIONS_COUNT         ((uint32_t)3)
#define HARD_LOCATIONS_COUNT  ((uint32_t)32)

#include <kodama.h>
#include "line_position.h"

class CLearningLineFollower
{
  private:
    CLinePosition line_position;
    array<float, STATE_SIZE> state;
    ReinforcementLearning<STATE_SIZE, ACTIONS_COUNT, HARD_LOCATIONS_COUNT> rl;

  public:
    CLearningLineFollower();
    ~CLearningLineFollower();

    void run();
};

extern CLearningLineFollower learning_line_follower;



#endif
