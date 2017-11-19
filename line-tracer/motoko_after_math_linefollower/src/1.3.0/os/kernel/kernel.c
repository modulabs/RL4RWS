/**
  @file   kernel.c
  @brief  main system kernel
  @newgroup kernel
  @addtogroup kernel

  implementation of micro kernel functions
 */

#include "kernel.h"

/**
  @brief saves thread's TCB (process/thread controll block)

  stores thread stack, flags, and priority counter

  @see THREADS_MAX_COUNT
*/
struct sThread volatile __thread__[THREADS_MAX_COUNT];
 

thread_stack_t __null_thread_stack__[32];

/**
  @brief current running thread ID

  index into \_\_thread\_\_ array, default value is SYSTEM_INIT\n
  this value set scheduler, as best thread to run\n

  @see SYSTEM_INIT
*/
volatile u32 __current_thread__;

/**
 @brief thread scheduler algorithm

 used thread deadline priority scheduler \n
 when called all non zero thread counters (cnt) decrements\n
 thread with lowest value will be executed\n\n
 for testing only is possible to choose simple round robin scheduler

 @see u32 create_thread(void (*thread_ptr)(), u32 *s_ptr, u32 stack_size, u16 priority)
 @see struct sThread
*/
void scheduler()
{
  #ifdef SCHED_PRIORITY
  /*death times priority scheduler*/
  u32 i, min_i = 0;

  for (i = 0; i < THREADS_MAX_COUNT; i++)		
  {
  /*find thread with minimum counter value*/
    if ( ((__thread__[i].flag&TF_WAITING) ==0) && ((__thread__[i].flag&TF_CREATED) !=0) && (__thread__[i].cnt < __thread__[min_i].cnt) )
      min_i=i;

  /*decrement counters*/
    if (__thread__[i].cnt != 0)
      __thread__[i].cnt--;
  }

  __thread__[min_i].cnt = __thread__[min_i].icnt;	/*set initial counter value*/
  __current_thread__ = min_i;
  #endif


  #ifdef SCHED_ROUND_ROBIN
  /*round robin scheduler*/
  do						
    {
      /*find next thread in cycle*/
      __current_thread__++;
      if (__current_thread__ >= TASK_MAX_COUNT)
        __current_thread__ = 0;
    }
  while ( ( (__thread__[__current_task__].flag&TF_CREATED) == 0) );
  #endif
} 


/**
 @brief sys tick interrupt handler

 periodicly called interupt, using SysTick Timer\n
 interrupt handler is defined in startup.c\n
 \n
 function save process context and read current stack value\n
 then call scheduler\n
 scheduler set value\_\_current_thread\_\_\n
 main stack pointer set from \_\_thread\_\_[\_\_current_thread\_\_].sp\n
 and restore context\n
 \n
 @see void scheduler()
*/

void SysTick_Handler()__attribute__(( naked )); 
void SysTick_Handler()
{
  /*save context*/
  #ifdef CPU_CORE_CORTEX_M4
  __asm volatile( "push {r4-r11}\n\t");
  #else
  #ifdef CPU_CORE_CORTEX_M3
  __asm volatile( "push {r4-r11}\n\t");
  #else
  __asm volatile( "push {r4-r7}\n\t"
                  "mov r4, r8\n\t"
                  "mov r5, r9\n\t"
                  "mov r6, r10\n\t"
                  "mov r7, r11\n\t"
                  "push {r4-r7}\n\t"
  );
  #endif
  #endif

  volatile u32 *sp = (u32*)__get_MSP();				/*read current stack pointer*/

  if (__current_thread__ != SYSTEM_INIT)		        /*dont save if first time running*/
    __thread__[__current_thread__].sp = (u32*)sp;     /*save current context stack pointer*/
  else
    __current_thread__ = 0;				           /*init done, we dont return here again, start with 1st thread*/

  scheduler();						                /*choose next thread*/

  sp = __thread__[__current_thread__].sp;			/*set it stackpointer*/
 
  u32 int_return = 0xfffffff9;      /*exit interrupt magic number, 
                                     tells mcu core to restore registers stored by hardware*/
  /*restore context and return from interrupt*/

  #ifdef CPU_CORE_CORTEX_M4
  __asm volatile( "mov lr, %0\n\t"    /*set magic*/
                  "msr msp, %1\n\t"   /*switch stack*/
                  "pop {r4-r11}\n\t"
                  "bx lr\n\t" : : "r" (int_return), "r" (sp)
  );
  #else
  #ifdef CPU_CORE_CORTEX_M3
  __asm volatile( "mov lr, %0\n\t"    /*set magic*/
                  "msr msp, %1\n\t"   /*switch stack*/
                  "pop {r4-r11}\n\t"
                  "bx lr\n\t" : : "r" (int_return), "r" (sp)
  );
  #else
  #ifdef CPU_CORE_CORTEX_M0
  __asm volatile( "mov lr, %0\n\t"    /*set magic*/
                  "msr msp, %1\n\t"   /*switch stack*/
                  "pop {r4-r7}\n\t"
                  "mov r8, r4\n\t"
                  "mov r9, r5\n\t"
                  "mov r10, r6\n\t"
                  "mov r11, r7\n\t"
                  "pop {r4-r7}\n\t"
                  "bx lr\n\t" : : "r" (int_return), "r" (sp)
  );
  #else
  __asm volatile( "mov lr, %0\n\t"    /*set magic*/
                  "msr msp, %1\n\t"   /*switch stack*/
                  "pop {r4-r7}\n\t"
                  "mov r8, r4\n\t"
                  "mov r9, r5\n\t"
                  "mov r10, r6\n\t"
                  "mov r11, r7\n\t"
                  "pop {r4-r7}\n\t"
                  "bx lr\n\t" : : "r" (int_return), "r" (sp)
  );
  #endif
  #endif
  #endif
}

/**
 @brief disable interrupts

 halt scheduler, disable all interrupts\n
 when called thread switching process is stopped\n
*/
void sched_off()
{
  __disable_irq();
}

/**
 @brief enable interrupts

 enable scheduler, enable all interrupts
*/
void sched_on()
{
  __enable_irq();
}

/**
 @brief switch to next thread

 invoke sys tick interrupt immediatly
*/
void yield()
{
  //sys_tick_trigger();
  //__asm volatile("svc #0");
  __asm volatile("nop");
}

/**
 @brief called on fatal system error

 dissable all interrupts and stay in infinite loop
*/
void kernel_panic()
{
  sched_off();
  while (1) 
  {
    __asm volatile("nop");
  }  
}

/**
 @brief thread ending call back

 when thread main function ends, program returns here\n
 clear thread flag, and wait in inifinite loop\n
 after next sys tick this will never return and thread item is free for\n
 other thread\n
*/
void thread_ending()
{
  sched_off();
  __thread__[__current_thread__].flag = TF_NULL;  /*terminate itself*/
  sched_on();
 
  while (1)
  {
    /*after sys tick interrupt this will never return*/
    __asm volatile("nop");
  }
}

/**
 @brief return unique thread ID

 @return unique thread ID, exactly it is index into \_\_thread\_\_ array
*/
u32 get_thread_id()
{
  volatile u32 res;
  
  sched_off();
  res = __current_thread__;
  sched_on();

  return res;
}

/**
 @brief main kernel init, call before first thread created (main_thread)

 initialize \_\_thread\_\_ array and some system variables
*/
void kernel_init()
{
  u32 i;
  for (i = 0; i < THREADS_MAX_COUNT; i++)
  {
    __thread__[i].flag = TF_NULL;
    __thread__[i].icnt = PRIORITY_MAX;
    __thread__[i].cnt = PRIORITY_MAX;
  }

  __current_thread__ = SYSTEM_INIT;

  create_thread(null_thread, __null_thread_stack__, sizeof(__null_thread_stack__), PRIORITY_MIN);
}


/**
 @brief main system start

 this function initialize sys tick timer and wait in inifinite loop\n
 after sys tick event it will be never called\n
 this function can be called only one time, usualy in main function\n

 init systick for correct periodic interrupt
 after 1st systick interrupt thread[0] will start
*/

void kernel_start()
{
  /*init sys tick periodic interrupt*/
  sys_tick_init();
  /*after systick event here will never return*/
  while(1)
  {
    __asm volatile("nop");
  }
}

/**
 @brief create new thread

 function create new thread to executing\n
 
 @param void (*thread_ptr)() is pointer to thread function
 @param *s_ptr is pointer to thread stack, it must be global variable array
 @param stack_size is stack array size
 @param priority defines thread priority

 @see struct sThread
 @see PRIORITY_MAX
 @see PRIORITY_MIN

 @return
 \* if no space in \_\_thread\_\_ array, it return THREAD_CREATING_ERROR and thread cannot be created\n
 \* if thread success created, item \_\_thread\_\_[THREAD_ID] is initialized\n
 execution starts after sys tick interrupt and scheduler choose
*/
u32 create_thread(void (*thread_ptr)(), thread_stack_t *s_ptr, u32 stack_size, u16 priority)
{
  u32 thread_id = 0;
  u32 res = THREADS_MAX_COUNT;

  stack_size/= sizeof(u32);

  /*
    find first free memory for stack
  */
  do
  {
    sched_off();
    if ((__thread__[thread_id].flag&TF_CREATED) == TF_NULL)	/* free item test */
    {
							/* set initial stack pointer*/
      __thread__[thread_id].sp= s_ptr + stack_size - CONTEXT_REGS_COUNT; /*to stack end - regs count, they will be poped*/
      *(s_ptr+stack_size-3)= (u32)thread_ending; 	  /*thread terminating function*/
      *(s_ptr+stack_size-2)= (u32)thread_ptr;		    /*pointer to thread function*/
      *(s_ptr+stack_size-1)= (u32)0x21000000;		     /*status register default*/
 
      if (priority<PRIORITY_MAX)
        priority=PRIORITY_MAX;

      __thread__[thread_id].icnt = priority;			/*set priority*/
      __thread__[thread_id].cnt = priority;			
      __thread__[thread_id].flag = TF_CREATED;		/*and flag to run*/
      res = thread_id;
    }

    sched_on();
    thread_id++;
  }
  while ( (thread_id != THREADS_MAX_COUNT) && (res == THREADS_MAX_COUNT) );


 return res;
}

/**
 @brief current thread switch to waiting state

 if thread in waiting state, scheduler dont try to execute this thread\n
 flag TF_WAITING is set and\n
 can be waked up after wake_up_threads(); called
*/
void set_wait_state()
{
  volatile u32 thread_id, tmp;
  thread_id = get_thread_id();	/*read current thread id*/

  sched_off();
  __thread__[thread_id].flag|= TF_WAITING;  /*set waiting flag*/
 
  do				/*wait in loop till TF_FLAG is set*/
  {
    sched_off();
    tmp = __thread__[thread_id].flag;
    sched_on();

    if ((tmp&TF_WAITING) != 0)
      yield(); /*schedule next thread, dont waste time*/
  }
  while ((tmp&TF_WAITING) != 0);
}


/**
 @brief wake up all threads with TF_CREATED flag set

 function clear TF_WAITING flag in all initialized threads,\n
 after sys tick scheduler will execute all threads\n
*/
void wake_up_threads()
{
  u32 i;

  for (i = 0; i < THREADS_MAX_COUNT; i++)  /*for all threads*/
  {
    sched_off();
    __thread__[i].flag&= ~TF_WAITING;  /*clear waiting flag*/
    sched_on();
  }
}

void wake_up_threads_int()
{
  u32 i;

  for (i = 0; i < THREADS_MAX_COUNT; i++)   /*for all threads*/
  {
    __thread__[i].flag&= ~TF_WAITING;       /*clear waiting flag*/
  } 
}


/**
  @brief wait until thread with specified ID ends
  
  this ID is returned when create_thread(); called\n

  @param thread_id : unique thread id returned when thread_created called
  @see u32 create_thread(void (*thread_ptr)(), u32 *s_ptr, u32 stack_size, u16 priority)
*/
void join(u32 thread_id)
{
  volatile u32 tmp_flag, tmp_id;

  tmp_id = thread_id;			/*copy thread ID*/
  
  do
  {
    yield();			/*dont waste cpu time*/
    sched_off();
    tmp_flag = __thread__[tmp_id].flag;	/*read thread flags*/
    sched_on();
  }
  while ((tmp_flag&TF_CREATED) != 0);	/*check if thread still active*/
}

void null_thread()
{
  while (1)
  { 
    sleep();
  }
}
