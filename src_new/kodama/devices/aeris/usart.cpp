#include "usart.h"
#include "gpio.h"
#include "stm32_common.h"

#define UBRR_VALUE (((F_CPU / (TERMINAL_BAUDRATE * 16UL))) - 1)


//use usart1, on pins PA9 and PA10
#define USART      USART1


CUSART::CUSART()
{
  TGpio<TGPIOA, 9, GPIO_MODE_AF> usart_tx_pin;
  TGpio<TGPIOA, 10, GPIO_MODE_AF> usart_rx_pin;

  usart_tx_pin.af_config(((uint8_t)0x07)); //AF7
  usart_rx_pin.af_config(((uint8_t)0x07)); //AF7

  RCC->APB2ENR|= RCC_APB2ENR_USART1EN;  //USART1 clock enable

  usart_init(USART, TERMINAL_BAUDRATE); //init usart1, 8bits, 1 start, 1 stop, no parity

  /*
  USART_ITConfig(USART, ((uint32_t)0x00050105), ENABLE); // enable the USART receive interrupt, USART_IT_RXNE
  nvic_init(USART1_IRQn, 0, 0);
  */
}

CUSART::~CUSART()
{


}

void CUSART::putchar(char c)
{
  while( !(USART->ISR & USART_ISR_TXE) )
		__asm("nop");

	USART->TDR = c;
}

char CUSART::getchar()
{
  while (ischar() == 0)
    __asm("nop");
    
  return USART->RDR;
}

unsigned char CUSART::ischar()
{
  if (USART->ISR & USART_ISR_RXNE)
    return 1;

  return 0;
}




/*

#define UART_RX_BUFFER_SIZE   8

unsigned int g_uart_wr_ptr, g_uart_rd_ptr;
unsigned char g_uart_rx_buffer[UART_RX_BUFFER_SIZE];

void USART_ITConfig(USART_TypeDef* USARTx, uint32_t USART_IT, FunctionalState NewState)
{
  uint32_t usartreg = 0, itpos = 0, itmask = 0;
  uint32_t usartxbase = 0;


  usartxbase = (uint32_t)USARTx;

  usartreg = (((uint16_t)USART_IT) >> 0x08);

  itpos = USART_IT & ((uint32_t)0x000000FF);
  itmask = (((uint32_t)0x01) << itpos);

  if (usartreg == 0x02)
  {
    usartxbase += 0x04;
  }
  else if (usartreg == 0x03)
  {
    usartxbase += 0x08;
  }
  else
  {
  }
  if (NewState != DISABLE)
  {
    *(__IO uint32_t*)usartxbase  |= itmask;
  }
  else
  {
    *(__IO uint32_t*)usartxbase &= ~itmask;
  }
}
*/
