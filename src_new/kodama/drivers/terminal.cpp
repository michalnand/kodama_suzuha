#include "terminal.h"
#include <stdarg.h>

#ifdef KODAMA_USE_TERMINAL
class CTerminal terminal;
#endif


CTerminal::CTerminal()
          :CUSART()
{

}

CTerminal::~CTerminal()
{

}

void CTerminal::puts(char *s)
{
  while (*s)
    putchar(*s++);
}

void CTerminal::puti(int n)
{
  char flag = 0, s[12];
	unsigned char ptr;

	if (n < 0)
 	{
  		n = -n;
		flag = 1;
	}

	s[11] = '\0';
	ptr = 10;

	do
	{
    	s[ptr] = '0' + (n%10);
    	n/= 10;
    	ptr--;
	}
    while (n != 0);

	if (flag)
		s[ptr] = '-';
	else
		ptr++;

	puts(s + ptr);
}

void CTerminal::putui(unsigned int n)
{
	char s[12];
	unsigned char ptr;

	s[11] = '\0';
	ptr = 10;

	do
	{
    	s[ptr] = '0' + (n%10);
    	n/= 10;
    	ptr--;
	}
    while (n != 0);

	ptr++;
	puts(s + ptr);
}

void CTerminal::putx(unsigned int n)
{
	char s[12];
	char tmp;
	unsigned char ptr;

	s[11] = '\0';
	ptr = 10;

	do
	{
    	tmp=n&0x0F;		/*modulo 16*/
    	if (tmp < 10)
     		s[ptr] = '0' + tmp;
    	else
     		s[ptr] = 'a' + tmp - 10;

    	n>>= 4;		/*div 16*/
    	ptr--;
   	}
    while (n != 0);

	ptr++;
 	puts(s + ptr);
}

#ifdef TERMINAL_USE_FLOAT

void CTerminal::putf(float n, unsigned int decimal_places)
{
  unsigned int i, power = 1;

  char sgn = ' ';
  if (n < 0)
  {
    sgn = '-';
    n = -n;
  }

  for (i = 0; i < decimal_places; i++)
    power*= 10;

  int int_part = (int)n;
  int frac_part = (int)((n - int_part)*power);
  if (frac_part < 0)
    frac_part = -frac_part;

  putchar(sgn);
  puti(int_part);
  putchar('.');
  puti(frac_part);
}

#endif


void CTerminal::printf(const char *str, ...)
{
	va_list args;
	va_start(args, str);

  unsigned int s_ptr = 0;

	while (str[s_ptr] != '\0')			/*scan string*/
 	{
		if (str[s_ptr] != '%')
		{
			putchar(str[s_ptr]);			/*if no % print char*/
			s_ptr++;
   	}
		else
		{		/*switch %? argumet*/
	    	s_ptr++;

	    	switch (str[s_ptr])
	    	{
	     		case 'i': puti(va_arg(args, int)); break;
	     		case 'u': putui(va_arg(args, int)); break;
	     		case 'x': putx(va_arg(args, int)); break;
	     		case 'c': putchar(va_arg(args, int)); break;
	     		case 's': puts((char*)va_arg(args, int)); break;
	     		case '%': putchar('%'); break;

          #ifdef TERMINAL_USE_FLOAT
          case 'f': putf(va_arg(args, double), 3); break;
          #endif
	    	}

			  s_ptr++;
	   }
	}

  va_end(args);
}
