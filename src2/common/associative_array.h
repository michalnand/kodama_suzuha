#ifndef _ASSOCIATIVE_ARRAY_H_
#define _ASSOCIATIVE_ARRAY


#include "math_array.h"
#include "math.h"

template <int input_size, int output_size, int hard_locations_count, class int_type = float> class associative_array
{
  private:
    array<math_array<input_size, int_type>, hard_locations_count> hard_locations;
    array<math_array<output_size, int_type>, hard_locations_count> output_values;

    unsigned int used_hard_locations;

    int_type learning_rate;

  public:
    associative_array()
    {

    }

    ~associative_array()
    {

    }

    void init(int_type _learning_rate)
    {
      used_hard_locations = hard_locations_count/2;
      learning_rate = _learning_rate;
      unsigned int i, j;

      for (j = 0; j < hard_locations_count; j++)
        for (i = 0; i < input_size; i++)
        {
          hard_locations[j][i] = math.rnd();
        }

      for (j = 0; j < hard_locations_count; j++)
        for (i = 0; i < output_size; i++)
          output_values[j][i] = 0;
    }

    void save(math_array<input_size, int_type> &input, math_array<output_size, int_type> &required_output)
    {
      unsigned int j;
      unsigned int min_idx = 0;
      int_type min_value = 32000, tmp;
      for (j = 0; j < used_hard_locations; j++)
        if ((tmp = hard_locations[j].distance(input)) < min_value)
        {
          min_idx = j;
          min_value = tmp;
        }

     if (used_hard_locations < hard_locations.size())
      {
        hard_locations[used_hard_locations].mix(input, MATH_ARRAY_RATIO_MAX);
        output_values[used_hard_locations].mix(required_output, MATH_ARRAY_RATIO_MAX);
        used_hard_locations++;
      }
      else
      {
        hard_locations[min_idx].mix(input, learning_rate);
        output_values[min_idx].mix(required_output, learning_rate);
      }
    }


    void load(math_array<input_size, int_type> &input, math_array<output_size, int_type> &result)
    {
      unsigned int j;
      unsigned int min_idx = 0;
      int_type min_value = 32000, tmp;
      for (j = 0; j < used_hard_locations; j++)
        if ((tmp = hard_locations[j].distance(input)) < min_value)
        {
          min_idx = j;
          min_value = tmp;
        }

      result.mix(output_values[min_idx], MATH_ARRAY_RATIO_MAX);
    }

    float get_hard_location_by_idx(unsigned int hard_location_idx, unsigned int state_item_idx)
    {
      return hard_locations[hard_location_idx][state_item_idx];
    }

    float get_output_by_idx(unsigned int hard_location_idx, unsigned int output_idx)
    {
      return output_values[hard_location_idx][output_idx];
    }
};

#endif
