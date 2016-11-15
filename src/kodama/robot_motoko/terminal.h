#ifndef _TERMINAL_H_
#define _TERMINAL_H_

#include <stdint.h>

#include "terminal_interface.h"

class CTerminal:public CTerminalInterface
{
  public:
    CTerminal();
    ~CTerminal();

    int32_t terminal_init();

    void putchar(char c);
    int getchar();
    int ischar();
    int puts(char *s);

    /*print signed int number*/
    void puti(int32_t n);

    /*print unsigned int number*/
    void putui(uint32_t n);

    /*print unsigned int as hex*/
    void putx(uint32_t n);

    void printf(const char *str, ...);
    char* gets(char *s);
    void scanf(char *str, ...);
};

#endif
