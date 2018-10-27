#include "imu.h"

u32 imu_init()
{ 
	/*enable gyro, xyz axis, 200Hz, 70Hz cut off*/
	i2c_write_reg(GYRO_ADDRESS, GYRO_CTRL_REG1, (1<<6)|(1<<5)|(1<<4) | (1<<0)|(1<<1)|(1<<2)|(1<<3));
	//imu_write_reg(GYRO_ADDRESS, GYRO_CTRL_REG2, (1<<5)|(1<<1)|(1<<0));/*enable high pass filter, 2Hz*/
	i2c_write_reg(GYRO_ADDRESS, GYRO_CTRL_REG2, 0);		/*dont use high pass filter*/
	i2c_write_reg(GYRO_ADDRESS, GYRO_CTRL_REG3, 0);		/*no interrupt*/
	i2c_write_reg(GYRO_ADDRESS, GYRO_CTRL_REG4, (1<<4));	/*500dpi*/
	i2c_write_reg(GYRO_ADDRESS, GYRO_CTRL_REG5, 0);
	//imu_write_reg(GYRO_ADDRESS, GYRO_CTRL_REG5, (1<<4));	/*enable high pass filter*/

	g_imu.gyro_x = 0;
	g_imu.gyro_y = 0;
	g_imu.gyro_z = 0;

	g_imu.mag_x = 0;
	g_imu.mag_y = 0;
	g_imu.mag_z = 0;

	g_imu.acc_x = 0;
	g_imu.acc_y = 0;
	g_imu.acc_z = 0;

	imu_read();
	return 0; 
} 

void imu_read()
{
	u16 tmp;

	/*
	tmp = (u16)i2c_read_reg(GYRO_ADDRESS, GYRO_OUT_X_LSB);
	tmp|= ((u16)i2c_read_reg(GYRO_ADDRESS, GYRO_OUT_X_MSB))<<8;
	g_imu.gyro_x = tmp;

	tmp = (u16)i2c_read_reg(GYRO_ADDRESS, GYRO_OUT_Y_LSB);
	tmp|= ((u16)i2c_read_reg(GYRO_ADDRESS, GYRO_OUT_Y_MSB))<<8;
	g_imu.gyro_y = tmp;
	*/

	tmp = (u16)i2c_read_reg(GYRO_ADDRESS, GYRO_OUT_Z_LSB);
	tmp|= ((u16)i2c_read_reg(GYRO_ADDRESS, GYRO_OUT_Z_MSB))<<8;
	g_imu.gyro_z = tmp;
}