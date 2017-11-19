#include "mem.h"


void * operator new(size_t size)
{
  return malloc_safe(size);
}

void operator delete(void * ptr)
{
  free_safe(ptr);
}
