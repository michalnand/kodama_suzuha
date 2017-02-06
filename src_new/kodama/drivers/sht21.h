#ifndef _SHT_21_H_
#define _SHT_21_H_

class CSHT21
{
  public:
    int temperature, humidity;

  public:

    CSHT21();
    ~CSHT21();
    void read();

  private:
    unsigned int read_(unsigned char command);
    void delay(unsigned int loops);
};

#endif
