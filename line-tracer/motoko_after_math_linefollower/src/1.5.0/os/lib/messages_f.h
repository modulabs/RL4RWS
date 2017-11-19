/**
 @file messages_f.h
 @brief cross thread messages communication module with fifo
 @newgroup library_messages
 @addtogroup library_messages

 library for message communication using fifo\n
 each communication node must be registred by calling msg_register(name); name is\n
 symbolic name know for all communication sides\n
 \n 
 to send message call msg_raise(msg) or msg_raise_async(msg);\n
 msg_raise(msg) - send and wait unatil receiver process message\n
 msg_raise_async(msg) - send and end, no blocking operation
 \n
 \n
 to receive message call msg_get(msg);\n
 this function switch thread to waiting state util message captured\n
 then wake up and fill msg struct with message
*/

#ifndef _MESSAGES_F_H
#define _MESSAGES_F_H

#include "../suzuha_os.h"

/**
 @brief define that messages_f.h is used
*/
#define LIB_MESSAGES_F 1

/**
 @brief empty message

 this value is used for checking fifo item is free or no message presents
*/
#define MSG_NULL 0

/**
 @brief messages fifo size
 
 each record takes sizeof struct sMsg
*/
#define MSG_FIFO_SIZE 4


/**
 @brief msg_raise returning value

 message succesfully addes into fifo
*/
#define MSG_SUCESS	0

/**
 @brief msg_raise returning value

 message receiver dont exist
*/
#define MSG_NO_REGISTED 1

/**
 @brief msg_raise returning value

 msg fifo is full, message cannot be added\n
 this can mean system is overload\n
*/
#define MSG_FIFO_FULL	2

/**
 @brief msg_raise returning value

 other message system error
*/
#define MSG_ERROR	255


/**
 @brief message item

 \* u32 destination, source - symbolic unique 32 bit name for receiver and sender, diferent from MSG_NULL\n
 this name must be know for all communication sides
 \* size - item suze in bytes
 \* data - main message, in simple form 32 bit data, in more complex can be retyped pointer for any structure\n
 when pointer used, avoid to data change or destroy until receiver process message
*/
struct sMsg
{
	u32 destination, source;	
	u32 size;
	u32 data;
};

/**
 @brief initliaze messages library

 usually called in lib_init();
*/
void messages_init();

/**
 @brief register thread for work with messages

 @param u32 name : unique 32 bit name know for all communication parts\n
*/
void msg_register(u32 name);

void msg_unregister();

/**
 @brief wait for message

 switch thread into waiting state until message captured
 
 @return struct sMsg *msg extracted from message fifo
*/
void msg_get(struct sMsg *msg);

/**
 @brief send message

 send message as synchro - wait until receiver reive message

 @param struct sMsg *msg message to send
 @return MSG_SUCESS if success, other returning values : MSG_NO_REGISTED, MSG_FIFO_FULL, MSG_ERROR
 @see struct sMsg
*/
u32 msg_raise(struct sMsg *msg);

/**
 @brief send message

 send message and dont wait\n
 function put message in fifo if there is registred message listener and ends\n

 @param struct sMsg *msg message to send
 @return MSG_SUCESS if success, other returning values : MSG_NO_REGISTED, MSG_FIFO_FULL, MSG_ERROR
 @see struct sMsg
*/
u32 msg_raise_async(struct sMsg *msg);


/**
	@brief return 0 if no message in front, else return !0
*/
u32 msg_check();
#endif
