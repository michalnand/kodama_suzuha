#ifndef _OS_H_
#define _OS_H_

#include <stdint.h>

struct sThread
{
  uint16_t cnt, icnt;
  uint32_t flag;
  uint32_t *sp;
};

#define OS_THREAD_MAX_COUNT   8

typedef uint32_t thread_stack_t;


class COS
{
  public:
    COS()
    {

    }

    ~COS()
    {

    }

    

    uint32_t create_thread(void (*thread_ptr)(), thread_stack_t *s_ptr, uint32_t stack_size, uint16_t priority);
    void join(uint32_t thread_id)
    {

    }

    uint32_t get_thread_id()
    {
      return 0;
    }

    void run();
};

#endif
