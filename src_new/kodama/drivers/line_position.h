#ifndef _LINE_POSITION_H_
#define _LINE_POSITION_H_

#include <kodama.h>


struct sLineResult
{
  int32_t position;
  unsigned char flags;
};

class CLinePosition: public CRGB_I2C
{
  public:
    struct sLineResult line_result;

  public:
    CLinePosition();
    ~CLinePosition();

    void read_line_position();
    uint16_t init_line_position();
};

#endif
