#include "stdio.h"
/**
 @brief lib for variable arguments count working
*/
#include "stdarg.h"


#ifdef LIB_MUTEX
mutex_t mutex_putc_, mutex_getc_, mutex_puts_, mutex_printf_;
#endif

void stdio_init()
{
	u32 i;

	#ifdef LIB_MUTEX
	mutex_init(&mutex_putc_);
	mutex_init(&mutex_getc_);
	mutex_init(&mutex_puts_);
	mutex_init(&mutex_printf_);
	#endif



	for (i = 0; i < 8; i++)
		putc_(' ');
	
	for (i = 0; i < 32; i++)
		putc_('\n');

	printf_("stdio init done\n");
}

unsigned int strlen_(char *s)
{
	unsigned int len = 0;
	while (s[len] != '\0')
		len++;
	return len;
}

void putc_(char c)
{
	#ifdef LIB_MUTEX
	mutex_lock(&mutex_putc_);
	#endif

	uart_write(c);

	#ifdef LIB_MUTEX
	mutex_unlock(&mutex_putc_);
	#endif
}

char getc_()
{
	#ifdef LIB_MUTEX
	mutex_lock(&mutex_getc_);
	#endif

	char res = uart_read();

	#ifdef LIB_MUTEX
	mutex_unlock(&mutex_getc_);
	#endif

	return res;
}

void puts_(char *s)
{
	u32 ptr = 0;
	
	#ifdef LIB_MUTEX
	mutex_lock(&mutex_puts_);
	#endif

	while (s[ptr]!='\0')
	{
		putc_(s[ptr]);
		ptr++;
	}

	#ifdef LIB_MUTEX
	mutex_unlock(&mutex_puts_);
	#endif
}


/*print signed int number*/
void puti_(i32 n)
{
	char flag = 0, s[12];
	u32 ptr;

	if (n < 0)
 	{
  		n = -n;
		flag = 1;
	}

	s[11] = '\0';
	ptr = 10;
	
	do
	{
    	s[ptr] = '0' + (n%10);
    	n/= 10;
    	ptr--;	
	} 
    while (n != 0); 

	if (flag)
		s[ptr] = '-';
	else
		ptr++;

	puts_(s + ptr);
}


/*print unsigned int number*/
void putui_(u32 n)
{
	char s[12];
	u32 ptr;

	s[11] = '\0';
	ptr = 10;

	do
	{
    	s[ptr] = '0' + (n%10);
    	n/= 10;
    	ptr--;	
	} 
    while (n != 0); 

	ptr++;
	puts_(s + ptr);
}



/*print unsigned int as hex*/
void putx_(u32 n)
{
	char s[12];
	u8 tmp;
	u32 ptr;

	s[11] = '\0';
	ptr = 10;
 
	do
	{
    	tmp=n&0x0F;		/*modulo 16*/
    	if (tmp < 10)	
     		s[ptr] = '0' + tmp;
    	else
     		s[ptr] = 'a' + tmp - 10;

    	n>>= 4;		/*div 16*/
    	ptr--;	
   	} 
    while (n != 0); 
	
	ptr++;
 	puts_(s + ptr);
}


/*
 print formated string
 know formats : %i, %u, %x, %c, %s
*/
void printf_(char *s, ...)
{
	#ifdef LIB_MUTEX
	mutex_lock(&mutex_printf_);
	#endif

	unsigned int s_ptr;

	va_list args;				/*begin stack working*/
	va_start(args,s);
	s_ptr = 0;

	while (s[s_ptr] != '\0')			/*scan string*/
 	{
		if (s[s_ptr] != '%')
		{
			putc_(s[s_ptr]);			/*if no % print char*/
			s_ptr++;
   		}
		else
		{					/*switch %? argumet*/
	    	s_ptr++;
							/*print correct argument, get value from stack : va_arg*/
	    
	    	switch (s[s_ptr])
	    	{					
	     		case 'i': puti_(va_arg(args, int)); break;	
	     		case 'u': putui_(va_arg(args, int)); break;
	     		case 'x': putx_(va_arg(args, int)); break;
	     		case 'c': putc_(va_arg(args, int)); break;		/*yeah, stack is 32bit alligment, dont take char or u16*/
	     		case 's': puts_((char*)va_arg(args, int)); break; 
	     		case '%': putc_('%'); break;
	    	}
		
			s_ptr++;	
	   	}
	}

	va_end(args);				/*stack working end*/

	#ifdef LIB_MUTEX
	mutex_unlock(&mutex_printf_);
	#endif
}