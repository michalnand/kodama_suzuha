#ifndef _GPIO_H_
#define _GPIO_H_

#include <inttypes.h>

#include <avr/io.h>

#define GPIO_MODE_OUT             0
#define GPIO_MODE_IN_FLOATING     1
#define GPIO_MODE_IN_PULLUP       2

template <unsigned char pin, unsigned char mode> class TGpioA
{
  public:
    TGpioA()
    {
      if (mode)
        DDRA&=~(1<<pin);
      else
        DDRA|= (1<<pin);

      if (mode == GPIO_MODE_IN_PULLUP)
        PORTA|= (1<<pin);
    }

    void write(int value)
    {
        if (value)
            PORTA|= (1<<pin);
        else
            PORTA&= ~(1<<pin);
    }

    int read()
    {
        return (PINA&(1<<pin)) != 0;
    }

    TGpioA& operator= (int value)
    {
      write(value); return *this;
    }

    TGpioA& operator= (TGpioA& rhs)
    {
      return write(rhs.read());
    };

    operator int()
    {
      return read();
    };
};



template <unsigned char pin, unsigned char mode = GPIO_MODE_IN_FLOATING> class TGpioB
{
  public:
    TGpioB()
    {
      if (mode)
        DDRB&=~(1<<pin);
      else
        DDRB|= (1<<pin);

      if (mode == GPIO_MODE_IN_PULLUP)
        PORTB|= (1<<pin);
    }

    void write(int value)
    {
        if (value)
            PORTB|= (1<<pin);
        else
            PORTB&= ~(1<<pin);
    }

    int read()
    {
        return (PINB&(1<<pin)) != 0;
    }

    TGpioB& operator= (int value)
    {
      write(value); return *this;
    }

    TGpioB& operator= (TGpioB& rhs)
    {
      return write(rhs.read());
    };

    operator int()
    {
      return read();
    };
};


template <unsigned char pin> class TGpioC
{
  public:
    TGpioC(int out)
    {
      if (out)
        DDRC|= (1<<pin);
      else
        DDRC&=~(1<<pin);
    }

    void write(int value)
    {
        if (value)
            PORTC|= (1<<pin);
        else
            PORTC&= ~(1<<pin);
    }

    int read()
    {
        return (PINC&(1<<pin)) != 0;
    }

    TGpioC& operator= (int value)
    {
      write(value); return *this;
    }

    TGpioC& operator= (TGpioC& rhs)
    {
      return write(rhs.read());
    };

    operator int()
    {
      return read();
    };
};


template <unsigned char pin> class TGpioD
{
  public:
    TGpioD(int out)
    {
      if (out)
        DDRD|= (1<<pin);
      else
        DDRD&=~(1<<pin);
    }

    void write(int value)
    {
        if (value)
            PORTD|= (1<<pin);
        else
            PORTD&= ~(1<<pin);
    }

    int read()
    {
        return (PIND&(1<<pin)) != 0;
    }

    TGpioD& operator= (int value)
    {
      write(value); return *this;
    }

    TGpioD& operator= (TGpioD& rhs)
    {
      return write(rhs.read());
    };

    operator int()
    {
      return read();
    };
};

#endif
