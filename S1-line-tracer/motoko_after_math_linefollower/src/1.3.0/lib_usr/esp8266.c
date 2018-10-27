#include "esp8266.h"



void esp8266_send(char *buf)
{
  u32 ptr = 0;
  while (buf[ptr] != '\0')
  {
    uart_write(buf[ptr]);
    ptr++;
  }
}

void esp8266_send_uint(u32 n)
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
	esp8266_send(s + ptr);
}

u32 esp8266_find_stream(char *pattern_buf, u32 pattern_buf_size, u32 time_out)
{
  u32 i = 0;

  unsigned long int time_ = timer_get_time();
  unsigned long int time_stop = time_ + time_out;

  uart_clear_buffer();
  do
  {
    u16 c = uart_is_char();
    if (c != 0xffff)
    {
      if (c == pattern_buf[i])
      {
        if (i < (pattern_buf_size-1))
          i++;
        else
        {
          uart_clear_buffer();
          return 1;
        }
      }
      else
        i = 0;
    }

    time_ = timer_get_time();
  }
  while (time_ < time_stop);

  uart_clear_buffer();
  return 0;
}



u32 esp8266_init(u32 server_mode)
{
  timer_delay_ms(3000);

/*
  esp8266_send((char*)"AT+RST\r\n");
  if (esp8266_find_stream((char*)"OK", 2, 3000) == 0)
  {
    return ESP8266_RESET_ERROR;
  }
*/

  if (server_mode != 0)
    esp8266_send((char*)"AT+CIPMUX=1\r\n");
  else
    esp8266_send((char*)"AT+CIPMUX=0\r\n");
  timer_delay_ms(1000);

  esp8266_send((char*)"AT+CWMODE=1\r\n");
  timer_delay_ms(1000);

  esp8266_send((char*)"AT+CWJAP=\"");
  esp8266_send((char*)ESP8266_WIFI_SSID);
  esp8266_send((char*)"\",\"");
  esp8266_send((char*)ESP8266_WIFI_PASS);
  esp8266_send((char*)"\"\r\n");

  if (esp8266_find_stream((char*)"OK", 2, 20000) == 0)
  {
    return ESP8266_WIFI_CONNECTING_ERROR;
  }

  if (server_mode != 0)
  {
    esp8266_send((char*)"AT+CIPSERVER=1,80\r\n");
    timer_delay_ms(200);
  }
  return ESP8266_SUCCESS;
}



i32 esp8266_get_nonblocking(char *buf, u32 buf_length, u32 time_out)
{
  u32 ptr = 0;

  u32 i;
  for (i = 0; i < buf_length; i++)
    buf[i] = '\0';

  unsigned long int time_ = timer_get_time();
  unsigned long int time_stop = time_ + time_out;

  do
  {
    u16 c = uart_is_char();
    if (c != 0xffff)
    {
      buf[ptr] = c;
      ptr++;
    }

    time_ = timer_get_time();
  }
  while ((ptr < buf_length) && (time_stop > time_));

  if (time_ > time_stop)
    return -1; /* time out*/

  if (ptr >= buf_length)
    return -2; /*buffer overflow*/

  return ptr; /*OK*/
}

u32 esp8266_connect(char *ip, u32 port, char *tx_buffer, u32 tx_buffer_length, char *rx_buffer, u32 rx_buffer_length)
{
  esp8266_send((char*)"AT+CIPSTART=\"TCP\",\"");
  esp8266_send((char*)ip);
  esp8266_send((char*)"\",");
  esp8266_send_uint(port);
  esp8266_send((char*)"\r\n");

  // AT+CIPSTART="TCP","192.168.2.2",2000

  if (esp8266_find_stream((char*)"OK", 7, 500) == 0)
    return ESP8266_SERVER_CONNECTING_ERROR;



  esp8266_send((char*)"AT+CIPSEND=");
  esp8266_send_uint(tx_buffer_length);
  esp8266_send((char*)"\r\n");

  if (esp8266_find_stream((char*)">", 1, 1000) == 0)
  {
    esp8266_send((char*)"AT+CIPCLOSE\r\n");
    timer_delay_ms(100);
    return ESP8266_SERVER_CONNECTING_ERROR2;
  }

  u32 i;
  for (i = 0; i < tx_buffer_length; i++)
    uart_write(tx_buffer[i]);

  if (esp8266_find_stream((char*)"SEND OK", 7, 100) == 0)
  {
    esp8266_send((char*)"AT+CIPCLOSE\r\n");
    timer_delay_ms(100);
    return ESP8266_SERVER_SENDING_ERROR;
  }

  if (esp8266_find_stream((char*)"+IPD,", 5, 100) == 0)
  {
    esp8266_send((char*)"AT+CIPCLOSE\r\n");
    timer_delay_ms(100);
    return ESP8266_SERVER_RESPONSE_ERROR;
  }

  u32 count = 0;
  char c = 0;
  while ((c = uart_read()) != ':')
    count = 10*count + (c - '0');

  esp8266_get_nonblocking(rx_buffer, rx_buffer_length, 500);

  esp8266_send((char*)"AT+CIPCLOSE\r\n");
  timer_delay_ms(100);

  return (1000 + count);
}
/*
u32 server_loop(char *buf, u32 buf_length)
{
  if (esp8266_find_stream((char*)"CONNECT", 7, 1000) == 0)
    return ESP8266_NO_CONNECTED_CLIENT;


  esp8266_send((char*)"AT+CIPSEND=0,");
  esp8266_send_uint(buf_length);
  esp8266_send((char*)"\r\n");

  if (esp8266_find_stream((char*)"OK", 2, 1000) == 0)
  {
    esp8266_send((char*)"AT+CIPCLOSE=0\r\n");
    timer_delay_ms(500);
    return ESP8266_SERVER_DATA_SENDING_ERROR;
  }

  if (esp8266_find_stream((char*)">", 1, 800) == 0)
  {
    esp8266_send((char*)"AT+CIPCLOSE=0\r\n");
    timer_delay_ms(500);
    return ESP8266_SERVER_DATA_SENDING_ERROR;
  }

  u32 i;
  for (i = 0; i < buf_length; i++)
    uart_write(buf[i]);

  timer_delay_ms(100);
  esp8266_send((char*)"AT+CIPCLOSE=0\r\n");
  timer_delay_ms(100);
  esp8266_send((char*)"AT+CIPCLOSE=1\r\n");


  timer_delay_ms(500);

  uart_clear_buffer();

  return 0;
}

u8 web_page[] = "hello from motoko AFTERMATH robot\0";

void server_test()
{
  i32 resp = esp8266_init(1);

  printf_("ESP8266 init result %i\n", resp);


  u32 length = 0;
  while (web_page[length] != '\0')
    length++;

  while (1)
  {
    led_on(LED_0);
    server_loop((char*)web_page, length);
    led_off(LED_0);

    timer_delay_ms(200);
  }
}
*/
