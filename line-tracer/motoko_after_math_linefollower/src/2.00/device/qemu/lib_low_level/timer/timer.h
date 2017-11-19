#ifndef _TIMER_H_
#define _TIMER_H_

#include "../lib_low_level.h"

#define EVENT_TIMER_COUNT	4

#define EVENT_TIMER_0_ID	0
#define EVENT_TIMER_1_ID	1
#define EVENT_TIMER_2_ID	2
#define EVENT_TIMER_3_ID	3



// typedef long unsigned int time_t ;




void timer_init();
void timer_delay_loops(u32 loops);
long unsigned int timer_get_time();
void timer_delay_ms(u32 ms);

/*
	set event timer period
	count_down_time = (period/4096Hz) [s]
*/
void event_timer_set_period(u32 id, u16 period);

/*wait for timer countdown flag and clear*/
void event_timer_wait(u32 id);

/*return 1 if timer count down, non blocking*/
u32 event_timer_get_flag(u32 id);

void event_timer_clear_flag(u32 id);


#endif
