#ifndef _IMU_H_
#define _IMU_H_

#include "../device/device.h"

#define GYRO_L3G4200D


#ifdef GYRO_L3G4200D 

#define GYRO_ADDRESS		(0xD0)

/*gyroscope L3G4200D */
#define	GYRO_WHO_AM_I		0x0F
#define	GYRO_WHO_AM_I_ID	211

#define GYRO_CTRL_REG1 		0x20
#define GYRO_CTRL_REG2 		0x21
#define GYRO_CTRL_REG3 		0x22
#define GYRO_CTRL_REG4 		0x23
#define	GYRO_CTRL_REG5		0x24

#define GYRO_OUT_X_LSB 		0x28
#define GYRO_OUT_X_MSB 		0x29
#define GYRO_OUT_Y_LSB 		0x2A
#define GYRO_OUT_Y_MSB 		0x2B
#define GYRO_OUT_Z_LSB 		0x2C
#define GYRO_OUT_Z_MSB 		0x2D

#endif



struct sIMU
{
	i16 gyro_x, gyro_y, gyro_z;
	i16 mag_x, mag_y, mag_z;
	i16 acc_x, acc_y, acc_z;
};

struct sIMU g_imu;

u32 imu_init();
void imu_read();

#endif