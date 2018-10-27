#include "l3g4200.h"


u32 l3g4200_init()
{
  g_l3g4200.gx = 0;
  g_l3g4200.gy = 0;
  g_l3g4200.gz = 0;

  /*enable gyro, xyz axis, 200Hz, 70Hz cut off*/
  i2c_write_reg(L3G4200_ADDRESS, L3G4200_CTRL_REG1, (1<<6)|(1<<5)|(1<<4) | (1<<0)|(1<<1)|(1<<2)|(1<<3));
  //imu_write_reg(L3G4200_ADDRESS, L3G4200_CTRL_REG2, (1<<5)|(1<<1)|(1<<0));/*enable high pass filter, 2Hz*/
  i2c_write_reg(L3G4200_ADDRESS, L3G4200_CTRL_REG2, 0);		/*dont use high pass filter*/
  i2c_write_reg(L3G4200_ADDRESS, L3G4200_CTRL_REG3, 0);		/*no interrupt*/
  i2c_write_reg(L3G4200_ADDRESS, L3G4200_CTRL_REG4, (1<<4));	/*500dpi*/
  i2c_write_reg(L3G4200_ADDRESS, L3G4200_CTRL_REG5, 0);
  //imu_write_reg(L3G4200_ADDRESS, L3G4200_CTRL_REG5, (1<<4));	/*enable high pass filter*/

  //check gyro who am I ID
  if (i2c_read_reg(L3G4200_ADDRESS, L3G4200_WHO_AM_I) != L3G4200_WHO_AM_I_ID)
    return 1;

  return 0;
}

void l3g4200_read()
{
  u16 tmp;

	tmp = (u16)i2c_read_reg(L3G4200_ADDRESS, L3G4200_OUT_X_LSB);
	tmp|= ((u16)i2c_read_reg(L3G4200_ADDRESS, L3G4200_OUT_X_MSB))<<8;
	g_l3g4200.gx = tmp;

	tmp = (u16)i2c_read_reg(L3G4200_ADDRESS, L3G4200_OUT_Y_LSB);
	tmp|= ((u16)i2c_read_reg(L3G4200_ADDRESS, L3G4200_OUT_Y_MSB))<<8;
	g_l3g4200.gy = tmp;

	tmp = (u16)i2c_read_reg(L3G4200_ADDRESS, L3G4200_OUT_Z_LSB);
	tmp|= ((u16)i2c_read_reg(L3G4200_ADDRESS, L3G4200_OUT_Z_MSB))<<8;
	g_l3g4200.gz = tmp;
}
