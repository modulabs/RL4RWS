#ifndef _L3G4200_H_
#define _L3G4200_H_

#include "../device/device.h"


// #define USE_L3G4200 1


#define L3G4200_ADDRESS		(0xD0)

/*gyroscope L3G4200D */
#define	L3G4200_WHO_AM_I		  0x0F
#define	L3G4200_WHO_AM_I_ID	  211

#define L3G4200_CTRL_REG1 		0x20
#define L3G4200_CTRL_REG2 		0x21
#define L3G4200_CTRL_REG3 		0x22
#define L3G4200_CTRL_REG4 		0x23
#define	L3G4200_CTRL_REG5		  0x24

#define L3G4200_OUT_X_LSB 		0x28
#define L3G4200_OUT_X_MSB 		0x29
#define L3G4200_OUT_Y_LSB 		0x2A
#define L3G4200_OUT_Y_MSB 		0x2B
#define L3G4200_OUT_Z_LSB 		0x2C
#define L3G4200_OUT_Z_MSB 		0x2D



struct sL3G4200
{
  i16 gx, gy, gz;
};

struct sL3G4200 g_l3g4200;

u32 l3g4200_init();
void l3g4200_read();

#endif
