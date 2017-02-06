#ifndef _APDS_9950_H_
#define _APDS_9950_H_

#include <kodama.h>

struct sAPDS9950Result
{
  uint16_t r, g, b, a;
  uint16_t proximity;
};


class CAPDS9950
{
  public:
    struct sAPDS9950Result result;

  public:
    CAPDS9950();
    ~CAPDS9950();

    char init();

    void read();
};

#endif
