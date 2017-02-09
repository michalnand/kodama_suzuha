#ifndef _CONFIG_H_
#define _CONFIG_H_


#define KODAMA_USE_GPIO
#define KODAMA_USE_TIMER
#define KODAMA_USE_TERMINAL
#define KODAMA_USE_I2C
#define KODAMA_USE_CONTROLL


#define F_CPU                   ((uint32_t)16000000)

#define TERMINAL_BAUDRATE       ((uint32_t)9600)
//#define TERMINAL_USE_FLOAT

#define TIMER_FREQUENCY         ((uint32_t)1000)
#define TIMERS_COUNT            ((unsigned char)8)


#define I2C_PORT                    TGPIOC
#define I2C_SCL_PIN                 5
#define I2C_SDA_PIN                 4
#define I2C_SPEED                   5

#define LED_GPIO                    TGPIOB
#define LED_PIN                     5


#endif
