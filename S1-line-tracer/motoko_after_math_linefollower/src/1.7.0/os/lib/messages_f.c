#include "messages_f.h"

volatile struct sMsg __msg__[MSG_FIFO_SIZE];
volatile u32 __msg_names__[THREADS_MAX_COUNT];

/*lib main init*/
void messages_init()
{
  u32 i;
  for (i = 0; i < THREADS_MAX_COUNT; i++)
    __msg_names__[i] = MSG_NULL;

  for (i = 0; i < MSG_FIFO_SIZE; i++)
  {
    __msg__[i].source = MSG_NULL;
    __msg__[i].destination = MSG_NULL;
    __msg__[i].data = MSG_NULL;
    __msg__[i].size = MSG_NULL;
  }
}

/*register thread for message receiving, use unique symbolic name*/
void msg_register(u32 name)
{
  u32 tid = get_thread_id();

  sched_off();
  __msg_names__[tid] = name;
  sched_on();
}

/*unregistre thread from message receiving*/
void msg_unregister()
{
  u32 tid = get_thread_id();

  sched_off();
  __msg_names__[tid] = MSG_NULL;
  sched_on();
}


/*wait for meesage and receive it*/
void msg_get(struct sMsg *msg)
{
  u32 i = 0;
  u32 tid = get_thread_id();
 
  while (1)
  {
    sched_off();

    /*check if in __msg__ fifo is message for us*/
    if ( __msg__[i].destination == __msg_names__[tid] )
    {
      /*transfer from fifo to output*/
      msg->source = __msg__[i].source;
      msg->destination = __msg__[i].destination;
      msg->data   = __msg__[i].data;
      msg->size   = __msg__[i].size;
  
      /*fifo item clear - can be used again*/
      __msg__[i].source      = MSG_NULL;
      __msg__[i].destination = MSG_NULL;
      __msg__[i].data        = MSG_NULL;
      __msg__[i].size        = MSG_NULL;

      sched_on();
      return;
    }

    sched_on();
    
    i++;

    /*new fifo search loop*/
    if (i >= MSG_FIFO_SIZE)  
    {
      i = 0;
      yield();     /*switch to next thread*/
    }  
  }
}


/*wait until ready and send message*/
u32 msg_raise(struct sMsg *msg)
{
  u32 msg_res = MSG_FIFO_FULL;
  while (msg_res == MSG_FIFO_FULL)
  {
    msg_res = msg_raise_async(msg); /*try raise new message*/

    if (msg_res != MSG_SUCESS)
      yield();     /*switch to next thread*/
  }
 
  wake_up_threads();		/*wake up threads*/
  return msg_res;
}

/*no wait and send message*/
u32 msg_raise_async(struct sMsg *msg)
{
  u32 i;

  sched_off();

  /*check if destination task is registered for listening*/
  i = 0;

  while ((i < THREADS_MAX_COUNT) && (msg->destination != __msg_names__[i]))
    i++;

  if (i >= THREADS_MAX_COUNT)
  {
      /*listener not found*/
      sched_on();
      return MSG_NO_REGISTED;
  }

  /*task is registered for listening*/

  /*find first free item in fifo*/
  for (i = 0; i < MSG_FIFO_SIZE; i++)
    if (__msg__[i].source == MSG_NULL) 
    {
      /*update fifo item value with new message*/
      __msg__[i].source = msg->source;
      __msg__[i].destination = msg->destination;
      __msg__[i].data = msg->data;
      __msg__[i].size = msg->size;

      /*sucess return*/
      sched_on();
      wake_up_threads();		/*wake up threads - to receive message*/
      return MSG_SUCESS;	
    }

    /*error return, no space to add message*/
    sched_on();

    wake_up_threads();		/*wake up threads*/
    return MSG_FIFO_FULL;
}


u32 msg_check()
{
  u32 tid = get_thread_id();
  u32 i;
  u32 res = 0;

  for (i = 0; i < MSG_FIFO_SIZE; i++)
  {
    sched_off();
    /*check if in __msg__ fifo is message for us*/
    if ( __msg__[i].destination == __msg_names__[tid] )
      res = 1;
    sched_on();
  }

  return res;
}