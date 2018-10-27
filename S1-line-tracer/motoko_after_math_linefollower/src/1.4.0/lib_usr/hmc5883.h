#ifndef _HMC5883_H_
#define _HMC5883_H_

#include "../device/device.h"

// #define USE_HMC5883 1

/*magnetometer HMC5883L*/
#define HMC5883_ADDRESS		0x3C


#define HMC5883_CRA			0x00
#define HMC5883_CRB			0x01
#define HMC5883_MODE		0x02
#define HMC5883_XH			0x03
#define HMC5883_XL			0x04
#define HMC5883_ZH			0x05
#define HMC5883_ZL			0x06
#define HMC5883_YH			0x07
#define HMC5883_YL			0x08
#define HMC5883_STATUS		0x09
#define HMC5883_ID_A		0x0A
#define HMC5883_ID_B		0x0B
#define HMC5883_ID_C		0x0C

#define HMC5883_ID_A_VALUE		0x48
#define HMC5883_ID_B_VALUE		0x34
#define HMC5883_ID_C_VALUE		0x33



struct sHMC5883
{
  i16 mx, my, mz;
};

struct sHMC5883 g_hmc5883;

u32 hmc5883_init();
void hmc5883_read();

#endif
