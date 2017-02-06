#ifndef _HMC_5883_H_
#define _HMC_5883_H_


struct sHMC5883Res
{
    int x, y, z;          //raw output
};


class CHMC5883
{
  public:
    struct sHMC5883Res result;

  public:
    CHMC5883();
    ~CHMC5883();

    void read();
};

#endif
