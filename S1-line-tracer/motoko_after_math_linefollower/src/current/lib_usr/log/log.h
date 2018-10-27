#ifndef _LOG_H_
#define _LOG_H_

#include "../lib_usr.h"


#ifdef __cplusplus
extern "C" {
#endif

#define FRAM_MEMORY_I2C_ADDRESS    0xA0
#define FRAM_MEMORY_CAPACITY       ((u32)2048)

void log_write(u32 adr, char *buffer, u32 nbyte);
void log_read(u32 adr, char *buffer, u32 nbyte);

// void log_test();

#ifdef __cplusplus
}
#endif

#endif
