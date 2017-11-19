#ifndef _MEM_H_
#define _MEM_H_

#include "../suzuha_os.h"

/*
  simple stack like malloc (without fragmentation)

  usage example :

  a1 = (char*)malloc_safe(a1_size);
  a2 = (char*)malloc_safe(a2_size);
  a3 = (char*)malloc_safe(a3_size);

  //code hera

  free(a3);
  free(a2);
  free(a1);
*/


#ifdef __cplusplus
extern "C" {
#endif

#ifndef NULL
#define NULL  0
#endif

void mem_init();

void * 	malloc (unsigned int __size);
void 	free (void *__ptr);


void* malloc_safe(u32 size);
void free_safe(void *ptr);


#ifdef __cplusplus
}
#endif






#ifdef __cplusplus


  #include <stdlib.h>

  __extension__ typedef int __guard __attribute__((mode (__DI__)));

  void * operator new(size_t size);
  void operator delete(void * ptr);

/*
  int __cxa_guard_acquire(__guard *g) {return !*(char *)(g);}
  void __cxa_guard_release (__guard *g) {*(char *)g = 1;}
  void __cxa_guard_abort (__guard *) {}
*/
#endif

#endif
