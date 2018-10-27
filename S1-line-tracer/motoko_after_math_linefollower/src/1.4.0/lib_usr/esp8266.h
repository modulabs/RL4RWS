#ifndef _ESP8266_H_
#define _ESP8266_H_

#include "../device/device.h"


/*
#define ESP8266_WIFI_SSID   "disconnected"
#define ESP8266_WIFI_PASS   "veryhard"
*/
#define ESP8266_WIFI_SSID   "NETGEAR83"
#define ESP8266_WIFI_PASS   "melodichill546"


#define ESP8266_SUCCESS                   (u32)0
#define ESP8266_RESET_ERROR               (u32)1
#define ESP8266_WIFI_CONNECTING_ERROR     (u32)2
#define ESP8266_SERVER_CONNECTING_ERROR   (u32)3
#define ESP8266_SERVER_CONNECTING_ERROR2  (u32)4
#define ESP8266_SERVER_SENDING_ERROR      (u32)5
#define ESP8266_SERVER_RESPONSE_ERROR     (u32)6

#define ESP8266_NO_CONNECTED_CLIENT             (u32)7
#define ESP8266_SERVER_DATA_SENDING_ERROR       (u32)8


/*
AT+RST
AT+CIPMUX=0
AT+CWMODE=1
AT+CWJAP="NETGEAR83","melodichill546"
*/

/*
//server mode
AT+CIPMUX=1
AT+CIPSERVER=1,80
AT+CIFSR    //check IP
*/



u32 esp8266_init(u32 server_mode);
u32 esp8266_connect(char *ip, u32 port, char *tx_buffer, u32 tx_buffer_length, char *rx_buffer, u32 rx_buffer_length);
u32 server_loop(char *buf, u32 buf_length);

void server_test();

#endif
