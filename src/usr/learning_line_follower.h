#ifndef _LEARNING_LINE_FOLLOWER_
#define _LEARNING_LINE_FOLLOWER_

#define STATE_SIZE            RGB_SENSORS_COUNT
#define ACTIONS_COUNT         ((uint32_t)3)
#define HARD_LOCATIONS_COUNT  ((uint32_t)16)

#include <kodama.h>


class CLearningLineFollower
{
  private:
    class ReinforcementLearning<STATE_SIZE, ACTIONS_COUNT, HARD_LOCATIONS_COUNT> rl;

  public:
    CLearningLineFollower();
    ~CLearningLineFollower();

    void init();
    void main();
};



#endif
