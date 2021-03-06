#include "usart.h"

#define UBRR_VALUE (((F_CPU / (TERMINAL_BAUDRATE * 16UL))) - 1)

CUSART::CUSART()
{
  //set baud rate
  UBRR0H = (uint8_t)(UBRR_VALUE>>8);
  UBRR0L = (uint8_t)UBRR_VALUE;

  //set frame format to 8 data bits, no parity, 1 stop bit
  UCSR0C |= (1<<UCSZ01)|(1<<UCSZ00);

  //enable transmission and reception
  UCSR0B |= (1<<RXEN0)|(1<<TXEN0);
}

CUSART::~CUSART()
{


}

void CUSART::putchar(char c)
{
  //transmit data
  UDR0 = c;

  //wait while previous byte is completed
  while(!(UCSR0A&(1<<UDRE0)))
    __asm("nop");
}

char CUSART::getchar()
{
  while(!(UCSR0A&(1<<RXC0)))
    __asm("nop");

  // return received data
  return UDR0;
}

unsigned char CUSART::is_char()
{
  if (UCSR0A&(1<<RXC0))
    return 1;
  return 0;
}
