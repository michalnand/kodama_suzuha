#ifndef _MLX90621_H_
#define _MLX90621_H_

#include <i2c.h>

#define IR_HEIGHT   ((unsigned int)4)
#define IR_WIDTH   ((unsigned int)16)

#define IR_POSITION_RANGE   1024

struct sIRresult
{
  int16_t pixels[IR_HEIGHT][IR_WIDTH];              //return normalised pixel data, in range <0, 255>
  int16_t max_value, min_value, average_value;     //return maximal, minimal, and average value; before normalisatiion
  int16_t center_x, center_y;                       //return poisiton, in range <0, IR_POSITION_RANGE>
};

class CMLX90621
{
  private:
    class CI2C *i2c;

  public:
    struct sIRresult ir_result;


  public:
    CMLX90621();
    ~CMLX90621();

    int ir_init(class CI2C *i2c_);
    void ir_refresh();


};


#endif
