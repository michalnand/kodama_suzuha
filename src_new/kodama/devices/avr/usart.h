#ifndef _USART_H_
#define _USART_H_

#include "avr.h"
#include <kodama_config.h>



class CUSART
{
  public:
    CUSART();
    ~CUSART();

    void putchar(char c);
    char getchar();

    unsigned char is_char();
};


#endif
