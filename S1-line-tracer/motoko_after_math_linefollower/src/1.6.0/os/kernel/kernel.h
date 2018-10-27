/**
  @file   kernel.h
  @brief  main system kernel
  @newgroup kernel
  @addtogroup kernel
 
  defines OS microkernel functions :

  \* threads creating
  \* threads destrying
  \* scheduler
  \* context switching process
  \* sleep and wake up mode
  \* low power support
  \* trivial atomic operations
 */

#ifndef _KERNEL_H_
#define _KERNEL_H_

#include "../suzuha_os.h"

#define SCHED_PRIORITY  1

/**
 @brief flag for libraries

 inform libs we are using preemptive multitasking
*/
#define PREEMPTIVE_MULTITASKING		1

/**
 @brief thread state flag

 initial flag value, thread item is free and can be used for new thread
*/
#define TF_NULL				0

/**
 @brief thread state flag

 flag thread thread is correctly initialized and used with some thread
*/
#define TF_CREATED			(1<<0)

/**
 @brief thread state flag

 flag thread item is waiting for wake up event
*/
#define TF_WAITING			(1<<1)


/**
 @brief error return value for create_task() function

 if this value is returned, new thread creating fail, because no space in \_\_task\_\_ TCB array
*/
#define THREAD_CREATING_ERROR		THREAD_MAX_COUNT


/**
 @brief CPU context regs count
*/
#define CONTEXT_REGS_COUNT		(16) // + 1 + 33)
 
/**
 @brief after reset this is set as current running thread, it represent no thread
*/
#define SYSTEM_INIT			0xffffffff

/**
 @brief maximum thread priority

 lower number is higher priority\n
 concrete value depends on TASK_MAX_COUNT 
*/
#define PRIORITY_MAX			(THREADS_MAX_COUNT)

/**
 @brief minimum thread priority
 
 if used this value, thread can be sleeping for very long time\n
 depends on other thread state and count
*/
#define PRIORITY_MIN			(0xff)


/**
 @brief kernel panic message

 nice message for total system crash
*/
#define KERNEL_PANIC "\nkernel panic, system halted\n"

/**
 @brief thread controll block

 each created thread have allocated this structure\n

 \* *sp		: it saves thread stack, include program counter, so context can be succesfully saved or restored after context switch 
 \* flag	: in this is stack state saved, if item is used for thread, flag TF_CREATED is set, if thread is waiting flag TF_WAITING is set,    initial value is TF_NULL
 \* cnt, icnt	: icnt stores priority counter value, cnt is temporary counter, when thread is choosen with scheduler to run this value is set to icnt value, after each other systick this value decremts
*/
struct sThread
{
  u16 cnt, icnt;
  u32 flag; 
  u32 *sp;
};


typedef u32 thread_stack_t;

/**
 @brief disable interrupts

thread switching process is terminated too
*/
void sched_off();

/**
 @brief enable interrupts

 thread switching process is enabled
*/
void sched_on();


/**
 @brief switch to next thread immediatly

 some as sys tick interrupt event : kernel save current thread context and switch to next
*/
void yield();

/**
 @brief return unique thread ID

 @return unique thread ID, exactly it is index into \_\_task\_\_ array
*/
u32 get_thread_id();

/**
 @brief main kernel init, call before first thread created (main_thread)

 initialize \_\_task\_\_ array and some system variables
*/
void kernel_init();

/**
 @brief main system start

 this function initialize sys tick timer and wait in inifinite loop\n
 after sys tick event it will be never called\n
 this function can be called only one time, usualy in main function\n
*/
void kernel_start();

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
 \* if no space in \_\_task\_\_ array, it return TASK_CREATING_ERROR and thread cannot be created\n
 \* if thread success created, item \_\_task\_\_[TASK_ID] is initialized\n
 execution starts after sys tick interrupt and scheduler choose
*/
u32 create_thread(void (*thread_ptr)(), thread_stack_t *s_ptr, u32 stack_size, u16 priority);	

/** 
 @brief disable interrupt and enter to infinite loop

 call this function when total program failure
*/
void kernel_panic();

/**
 @brief current thread switch to waiting state

 if thread in waiting state, scheduler dont try to execute this thread\n
 flag TF_WAITING is set and
 can be waked up after wake_up_threads() called
*/
void set_wait_state();

/**
 @brief wake up all threads with TF_CREATED flag set

 function clear TF_WAITING flag in all initialized threads,\n
 after sys tick scheduler will execute all tasks\n
*/
void wake_up_threads();

void wake_up_threads_int();


/**
  @brief wait until thread with specified ID ends
  
  this ID is returned when create_task(); called\n

  @param task_id : unique thread id returned when task_created called
  @see u32 create_thread(void (*thread_ptr)(), u32 *s_ptr, u32 stack_size, u16 priority)
*/
void join(u32 thread_id);



void null_thread();

#endif
