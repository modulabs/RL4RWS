#ifndef _ESP8266_H_
#define _ESP8266_H_

#include "../lib_usr.h"
#include "wifi_config.h"

#define ESP8266_SUCCESS                   ((i32)0)
#define ESP8266_RESET_ERROR               ((i32)-1)
#define ESP8266_WIFI_CONNECTING_ERROR     ((i32)-2)
#define ESP8266_SERVER_CONNECTING_ERROR   ((i32)-3)
#define ESP8266_SERVER_CONNECTING_ERROR2  ((i32)-4)
#define ESP8266_SERVER_SENDING_ERROR      ((i32)-5)
#define ESP8266_SERVER_RESPONSE_ERROR     ((i32)-6)

#define ESP8266_NO_CONNECTED_CLIENT             ((i32)-7)
#define ESP8266_SERVER_DATA_SENDING_ERROR       ((i32)-8)

#ifdef __cplusplus
extern "C" {
#endif


i32 esp8266_init(u32 server_mode);
void esp8266_uninit();
i32 esp8266_connect(char *ip, u32 port, char *tx_buffer, u32 tx_buffer_length, char *rx_buffer, u32 rx_buffer_length);
i32 server_loop(char *buf, u32 buf_length);

void server_test();
void client_test();


#ifdef __cplusplus
}
#endif

#endif
