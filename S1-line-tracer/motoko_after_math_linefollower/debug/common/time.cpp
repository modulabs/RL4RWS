#include "time.h"


#include <sys/time.h>
#include <stdio.h>
#include <unistd.h>



double get_ms_time()
{
 	struct timeval time;

    double res;    

    gettimeofday(&time, NULL);

    res = (time.tv_sec*1000.0 + time.tv_usec/1000.0);

    return res;
}