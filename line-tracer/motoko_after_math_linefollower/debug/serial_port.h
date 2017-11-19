#ifndef _SERIAL_PORT_H_
#define _SERIAL_PORT_H_

#include "common.h"

class CSerialPort
{
  private:
    int fd;

  public:
    CSerialPort(char *port_device);
    ~CSerialPort();
    void serial_send(char c);
    char serial_read();

  private:
    int set_interface_attribs (int fd, int speed, int parity);
    void set_blocking(int fd, int should_block);

};

#endif
