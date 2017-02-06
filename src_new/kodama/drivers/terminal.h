#ifndef _TERMINAL_H_
#define _TERMINAL_H_

#include <kodama.h>

class CTerminal: public CUSART
{
  public:
    CTerminal();
    ~CTerminal();

    void puts(char *s);
    void puti(int n);
    void putui(unsigned int n);
    void putx(unsigned int n);
    void putf(float n, unsigned int decimal_places);
    void printf(const char *str, ...);
};

extern class CTerminal terminal;


#endif
