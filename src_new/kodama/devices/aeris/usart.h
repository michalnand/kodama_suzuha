#ifndef _USART_H_
#define _USART_H_

#include "stm32f303.h"
#include <kodama_config.h>

#define NO_CHAR       0xffff


class CUSART
{
  public:
    CUSART();
    ~CUSART();

    void putchar(char c);
    char getchar();

    unsigned char ischar();

};


#endif
