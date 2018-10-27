#ifndef _STDIO_H_
#define _STDIO_H_


#include "../suzuha_os.h"

void putc_(char c);
char getc_();
void puts_(char *s);
void puti_(i32 n);
void putui_(u32 n);
void putx_(u32 n);

/**
 @brief print formated string

 similar function as printf\n
 supported output formats :\n

 \* i : 32 bit signed integer
 \* u : 32 bit unsigned integer
 \* x : 32 bit hex number
 \* c : 8  bit char
 \* s : string, terminated with \0
 \n
 \n float is not supported\n
*/
void printf_(char *s, ...);


void stdio_init();

#endif