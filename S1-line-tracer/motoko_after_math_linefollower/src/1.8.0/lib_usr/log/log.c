#include "log.h"


void log_write(u32 adr, char *buffer, u32 nbyte)
{
  u32 i;

  adr = adr&(FRAM_MEMORY_CAPACITY-1);

  i2cStart();

  i2cWrite(FRAM_MEMORY_I2C_ADDRESS | ((adr>>8)<<1) );
  i2cWrite(adr&0xff);

  for (i = 0; i < nbyte; i++)
    i2cWrite(buffer[i]);

  i2cStop();
}


void log_read(u32 adr, char *buffer, u32 nbyte)
{
  u32 i;

  adr = adr&(FRAM_MEMORY_CAPACITY-1);

  i2cStart();

  i2cWrite(FRAM_MEMORY_I2C_ADDRESS | ((adr>>8)<<1));  /*slave address, write command*/
  i2cWrite(adr&0xff);  /*send reg address*/

  i2cStart();
  i2cWrite(FRAM_MEMORY_I2C_ADDRESS | ((adr>>8)<<1) | (1<<0)); /*slave address, read command*/

  for (i = 0; i < (nbyte-1); i++) /*read data*/
    buffer[i] = i2cRead(1);
  buffer[(nbyte-1)] = i2cRead(0);
  i2cStop();
}


/*
void log_test()
{
  u32 i;

  printf_("testing log\n");

  printf_("\n\nerasing\n");

  u32 size = 4;


  printf_("\n\nwriting\n");
  m_srand(0);
  for (i = 0; i < (FRAM_MEMORY_CAPACITY/size); i++)
  {
    u32 data = m_rnd();
    log_write(i*size, (char*)(&data), size);

    printf_("%u ", data);
  }

  printf_("written %u items, %u bytes\n", (FRAM_MEMORY_CAPACITY/size), FRAM_MEMORY_CAPACITY);

  printf_("\n\nreading\n");
  m_srand(0);

  u32 error = 0;
  for (i = 0; i < (FRAM_MEMORY_CAPACITY/size); i++)
  {
    u32 data = 0;
    log_read(i*size, (char*)(&data), size);

    printf_("%u ", data);

    if (data != m_rnd())
      error = 1;
  }

  if (error != 0)
    printf_("\n\nreading error \n");
  else
    printf_("\n\nreading OK \n");


}

*/
