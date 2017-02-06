#ifndef _LINE_POSITION_H_
#define _LINE_POSITION_H_

#include <kodama.h>
#include <rgb.h>


class CLinePosition
{
  private:
    unsigned char on_line_;
    float line_position;

    array<int, RGB_SENSORS_COUNT> result_vect;
  public:
    CLinePosition();
    ~CLinePosition();

    void process(struct sRGBResult *rgb_result);

    unsigned char on_line();
    float get_line_position();
    void get_vector(array<int, RGB_SENSORS_COUNT> *v);
};


#endif
