#include "mutex.h"


void mutex_init(mutex_t *mutex)
{
	#ifdef PREEMPTIVE_MULTITASKING
  	
  	sched_off();
  	*mutex = MUTEX_UNLOCK;
  	sched_on();

  	#else
  	*mutex = MUTEX_UNLOCK;
    #endif
}

void mutex_lock(mutex_t *mutex)
{
	#ifdef PREEMPTIVE_MULTITASKING
	
	mutex_t mutex_tmp;

	do
	{
		do
		{
			sched_off();
			mutex_tmp = *mutex;
			sched_on();	

			if (mutex_tmp != MUTEX_UNLOCK)
				set_wait_state();			/*sleep thread, waiting for mutex_unlock in other threads*/
		}
		while (mutex_tmp != MUTEX_UNLOCK);

		sched_off();
		mutex_tmp = *mutex;
	}
	while (mutex_tmp != MUTEX_UNLOCK);
	*mutex = MUTEX_LOCK;

	sched_on();

	#else
  	*mutex = MUTEX_LOCK;
    #endif
}

void mutex_unlock(mutex_t *mutex)
{
	mutex_init(mutex);
	wake_up_threads();
	yield();
}

void mutex_destroy(mutex_t *mutex)
{
	mutex_init(mutex);
	wake_up_threads();		/*need this?*/
}    