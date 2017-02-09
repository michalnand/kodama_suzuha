#include "timer.h"
#include "core_cmFunc.h"
#include "stm32_common.h"

#ifdef KODAMA_USE_TIMER

class CTimer timer;

volatile unsigned long int g_time;
volatile struct sTimer g_timers[TIMERS_COUNT];

CTimer::CTimer()
{
  unsigned char i;

  for (i = 0; i < TIMERS_COUNT; i++)
  {
    g_timers[i].callback = nullptr;
    g_timers[i].period = 0;
    g_timers[i].cnt = 0;
    g_timers[i].flag = 0;
    g_timers[i].main_loop_callback_enabled = false;
  }

  g_time = 0;

  RCC->APB1ENR |= RCC_APB1ENR_TIM2EN;  //timer 2 clock enable

  timer_init(TIM2, 0, 0, 100-1, 720);
  nvic_init(TIM2_IRQn, 0, 1);

  __enable_irq();
}

CTimer::~CTimer()
{


}

//@brief add periodic task
//@param callback task function callback, void my_func(void)
//@param period_ms executing period in miliseconds
//@param main_loop_callback_enabled if set to true (default) task function is executed in main loop
//if set to false, task function is executing inside interrupt rutine - and other interrupts are blocked
void CTimer::add_task(void (*callback)(), unsigned int period_ms, bool main_loop_callback_enabled)
{
  int timer_idx = -1;

  __disable_irq();

  for (unsigned char i = 0; i < TIMERS_COUNT; i++)
    if (g_timers[i].callback == nullptr)
      timer_idx = i;

  if (timer_idx != -1)
  {
    g_timers[(unsigned char)timer_idx].callback = callback;
    g_timers[(unsigned char)timer_idx].period = period_ms;
    g_timers[(unsigned char)timer_idx].cnt = period_ms;
    g_timers[(unsigned char)timer_idx].flag = 0;
    g_timers[(unsigned char)timer_idx].main_loop_callback_enabled = main_loop_callback_enabled;
  }

  __enable_irq();
}


//@brief start real timer tasks executing
//run in main loop, all tasks set with main_loop_callback_enabled to true are
//executed in their period, and celared they flags;
//@warning - dont call test_and_clear for those tasks
void CTimer::main()
{
  unsigned char i = 0;
  while (1)
  {
    if (g_timers[i].main_loop_callback_enabled == true) //task executing in main
      if (test_and_clear(i))
        if (g_timers[i].callback != nullptr)
          g_timers[i].callback();
    i++;
    if (i >= TIMERS_COUNT)
      i = 0;
  }
}


//@brief set period of timer_id
//flag will be set to nonzero value 1000/period_ms times per second
void CTimer::set_period(unsigned char timer_id, unsigned int period_ms)
{
  __disable_irq();
  g_timers[timer_id].period = period_ms;
  g_timers[timer_id].cnt = period_ms;
  g_timers[timer_id].flag = 0;
  __enable_irq();
}

//@brief return nonzero value if timer_id elapsed it's period
//if flag is nonzero, is cleared automaticly
//when longer than one period isn't called this function, flag is incremented each
//period, until reach 255 value
unsigned int CTimer::test_and_clear(unsigned char timer_id)
{
  unsigned char res = 0;
  __disable_irq();


  if (g_timers[timer_id].flag)
  {
    res = g_timers[timer_id].flag;
    g_timers[timer_id].flag = 0;
  }

  __enable_irq();
  return res;
}

unsigned long int CTimer::get_time()
{
  volatile unsigned long int tmp;

  __disable_irq();
  tmp = g_time;
  __enable_irq();

  return tmp;
}

void CTimer::delay_ms(unsigned int ms_time)
{
  volatile unsigned long int time_stop = ms_time + get_time();
  while (get_time() < time_stop)
    __asm("nop");
}

void CTimer::delay_loops(unsigned long int loops)
{
  while (loops--)
    __asm("nop");
}

#ifdef __cplusplus
extern "C" {
#endif


void TIM2_IRQHandler()
{
  if ((TIM2->SR&((uint16_t)0x0001)) != RESET)    //check TIME_IT_Update flag
  {
    TIM2->SR = (uint16_t)~((uint16_t)0x0001);    //clear flag

    for (unsigned char i = 0; i < TIMERS_COUNT; i++)
    {

      if (g_timers[i].cnt)
        g_timers[i].cnt--;
      else
      {
        g_timers[i].cnt = g_timers[i].period;

        if (g_timers[i].flag != 255)
          g_timers[i].flag++;


        if (g_timers[i].main_loop_callback_enabled == false)    //task executing in interrupt
          if (g_timers[i].callback != nullptr)
            g_timers[i].callback();
      }
    }

    g_time++;
  }
}

#ifdef __cplusplus
}
#endif


#endif
