#ifndef _ASSOCIATIVE_MEMORY_H_
#define _ASSOCIATIVE_MEMORY_H_


#include "math_vector.h"

template <int input_size, int output_size, int hard_locations_count> class AssociativeMemory
{
  private:
    Vector<MathVector<input_size>, hard_locations_count> hard_locations;
    Vector<MathVector<output_size>, hard_locations_count> output_values;

    unsigned int used_hard_locations;

    float learning_rate;

  public:
    AssociativeMemory()
    {

    }

    ~AssociativeMemory()
    {

    }

    void init()
    {
      used_hard_locations = 0;
      learning_rate = 0.3;
    }

    void save(MathVector<input_size> &input, MathVector<output_size> &required_output)
    {
      unsigned int j;
      unsigned int min_idx = 0;
      float min_value = 100000000.0, tmp;
      for (j = 0; j < used_hard_locations; j++)
        if ((tmp = hard_locations[j].distance(input)) < min_value)
        {
          min_idx = j;
          min_value = tmp;
        }

     if (used_hard_locations < hard_locations.size())
      {
        hard_locations[used_hard_locations].mix(input, 1.0);
        output_values[used_hard_locations].mix(input, 1.0);
        used_hard_locations++;
      }
      else
      {
        hard_locations[min_idx].mix(input, learning_rate);
        output_values[min_idx].mix(input, learning_rate);
      }
    }


    void load(MathVector<input_size> &input, MathVector<output_size> &result)
    {
      unsigned int j;
      unsigned int min_idx = 0;
      float min_value = 100000000.0, tmp;
      for (j = 0; j < used_hard_locations; j++)
        if ((tmp = hard_locations[j].distance(input)) < min_value)
        {
          min_idx = j;
          min_value = tmp;
        }

      result.mix(output_values[min_idx], 1.0);
    }
};

#endif
