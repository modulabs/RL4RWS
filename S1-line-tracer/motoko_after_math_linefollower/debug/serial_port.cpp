#include "serial_port.h"

#if defined _BSD_SOURCE || defined _SVID_SOURCE
 #define __USE_MISC     1
#endif


#include <errno.h>
#include <termios.h>
#include <unistd.h>
#include <fcntl.h>    /* For O_RDWR */
#include <unistd.h>   /* For open(), creat() */


CSerialPort::CSerialPort(char *port_device)
{
  fd = open (port_device, O_RDWR | O_NOCTTY | O_SYNC);
  if (fd < 0)
  {
      printf("port %s opening error\n", port_device);
      return;
  }

  set_interface_attribs (fd, B115200, 0);  // set speed to 115,200 bps, 8n1 (no parity)
  set_blocking (fd, 0);                // set no blocking
}

CSerialPort::~CSerialPort()
{
  close(fd);
}


int CSerialPort::set_interface_attribs (int fd, int speed, int parity)
{
        struct termios tty;
        memset (&tty, 0, sizeof tty);
        if (tcgetattr (fd, &tty) != 0)
        {
            return -1;
        }

        cfsetospeed (&tty, speed);
        cfsetispeed (&tty, speed);

        tty.c_cflag = (tty.c_cflag & ~CSIZE) | CS8;     // 8-bit chars
        // disable IGNBRK for mismatched speed tests; otherwise receive break
        // as \000 chars
        tty.c_iflag &= ~IGNBRK;         // disable break processing
        tty.c_lflag = 0;                // no signaling chars, no echo,
                                        // no canonical processing
        tty.c_oflag = 0;                // no remapping, no delays
        tty.c_cc[VMIN]  = 0;            // read doesn't block
        tty.c_cc[VTIME] = 5;            // 0.5 seconds read timeout

        tty.c_iflag &= ~(IXON | IXOFF | IXANY); // shut off xon/xoff ctrl

        tty.c_cflag |= (CLOCAL | CREAD);// ignore modem controls,
                                        // enable reading
        tty.c_cflag &= ~(PARENB | PARODD);      // shut off parity
        tty.c_cflag |= parity;
        tty.c_cflag &= ~CSTOPB;
        tty.c_cflag &= ~CRTSCTS;

        if (tcsetattr (fd, TCSANOW, &tty) != 0)
        {
            return -1;
        }
        return 0;
}

void CSerialPort::set_blocking(int fd, int should_block)
{
        struct termios tty;
        memset (&tty, 0, sizeof tty);
        if (tcgetattr (fd, &tty) != 0)
        {
                return;
        }

        tty.c_cc[VMIN]  = should_block ? 1 : 0;
        tty.c_cc[VTIME] = 50;            // 0.5 seconds read timeout

        tcsetattr (fd, TCSANOW, &tty);
}


void CSerialPort::serial_send(char c)
{
  write (fd, &c, sizeof(char));
}

char CSerialPort::serial_read()
{
  char res;
  int n = read (fd, &res, sizeof(char));
  return res;
}
