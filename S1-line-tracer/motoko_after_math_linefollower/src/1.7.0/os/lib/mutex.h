#ifndef _MUTEX_H_
#define _MUTEX_H_

#include "../suzuha_os.h"

typedef volatile u32 mutex_t;

#define LIB_MUTEX			1

#define MUTEX_LOCK 			1
#define MUTEX_UNLOCK 		0

void mutex_init(mutex_t *mutex);
void mutex_lock(mutex_t *mutex);
void mutex_unlock(mutex_t *mutex);
void mutex_destroy(mutex_t *mutex);

#endif