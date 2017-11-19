#include "hmc5883.h"

void hmc5883_init()
{
  g_hmc5883.mx = 0;
  g_hmc5883.my = 0;
  g_hmc5883.mz = 0;

  i2c_write_reg(HMC5883_ADDRESS, HMC5883_CRA, (1<<4)|(1<<3));	  /*75Hz output rate*/
  i2c_write_reg(HMC5883_ADDRESS, HMC5883_CRB, 0);				       /*0.88 Gauss sensitivity*/
  i2c_write_reg(HMC5883_ADDRESS, HMC5883_MODE, 0);			       /*continuos mode*/
}

void hmc5883_read()
{
  g_hmc5883.mx = ((u16)i2c_read_reg(HMC5883_ADDRESS, HMC5883_XH))<<8;
	g_hmc5883.mx|= ((u16)i2c_read_reg(HMC5883_ADDRESS, HMC5883_XL));

	g_hmc5883.my = ((u16)i2c_read_reg(HMC5883_ADDRESS, HMC5883_YH))<<8;
	g_hmc5883.my|= ((u16)i2c_read_reg(HMC5883_ADDRESS, HMC5883_YL));

	g_hmc5883.mz = ((u16)i2c_read_reg(HMC5883_ADDRESS, HMC5883_ZH))<<8;
	g_hmc5883.mz|= ((u16)i2c_read_reg(HMC5883_ADDRESS, HMC5883_ZL));
}
