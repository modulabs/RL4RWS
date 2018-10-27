#include "lsm9ds0.h"

u32 lsm9ds0_init()
{
    u8 tmp;

    g_lsm9ds0_imu.ax = 0;
    g_lsm9ds0_imu.ay = 0;
    g_lsm9ds0_imu.az = 0;

    g_lsm9ds0_imu.mx = 0;
    g_lsm9ds0_imu.my = 0;
    g_lsm9ds0_imu.mz = 0;

    g_lsm9ds0_imu.gx = 0;
    g_lsm9ds0_imu.gy = 0;
    g_lsm9ds0_imu.gz = 0;

    g_lsm9ds0_imu.gx_ofs = 0;
    g_lsm9ds0_imu.gy_ofs = 0;
    g_lsm9ds0_imu.gz_ofs = 0;


    g_lsm9ds0_imu.temp = 0;

    //check gyro who am I register
    tmp = i2c_read_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_WHO_AM_I_G);
    if ( tmp != ((1<<7)|(1<<6)|(1<<4)|(1<<2)) )
        return 1;

    //check magnetometer and accelerometer who am I register
    tmp = i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_WHO_AM_I_XM);
    if (tmp != ((1<<6)|(1<<3)|(1<<0)) )
        return 2;


    //gyrosocpe init
        //enable all axis, power up, maximum data output rate - 100Hz
        i2c_write_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_CTRL_REG1_G, (1<<7)|(1<<6)|(1<<5)|(1<<4)|
                                                                (1<<3)|(1<<2)|(1<<1)|(1<<0));

        //2000DPS range
        i2c_write_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_CTRL_REG4_G, (1<<4)|(1<<3));


    //accelerometer init
        i2c_write_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_CTRL_REG0_XM, 0);

        //enable all axis, data rate 100Hz
        i2c_write_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_CTRL_REG1_XM, (1<<6)|(1<<5)|(1<<2)|(1<<1)|(1<<0));

        //2g full range
        i2c_write_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_CTRL_REG2_XM, 0);

    //magnetometer init
        // enable temperature sensor, high resolution, 100Hz outout rate
        i2c_write_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_CTRL_REG5_XM, (1<<7)|(1<<6)|(1<<5)|(1<<4)|(1<<2));

        //2 guass range
        i2c_write_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_CTRL_REG6_XM, 0);

        //continuous normal mode
        i2c_write_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_CTRL_REG7_XM, 1<<7);

    lsm9ds0_read();

    u32 i, measurments = 100;

    i32 gx_ofs_sum = 0;
    i32 gy_ofs_sum = 0;
    i32 gz_ofs_sum = 0;

    for (i = 0; i < measurments; i++)
    {
        lsm9ds0_read();
        gx_ofs_sum+= g_lsm9ds0_imu.gx;
        gy_ofs_sum+= g_lsm9ds0_imu.gy;
        gz_ofs_sum+= g_lsm9ds0_imu.gz;
    }

    g_lsm9ds0_imu.gx_ofs = gx_ofs_sum / (i32)measurments;
    g_lsm9ds0_imu.gy_ofs = gy_ofs_sum / (i32)measurments;
    g_lsm9ds0_imu.gz_ofs = gz_ofs_sum / (i32)measurments;

    //success
    return 0;
}


void lsm9ds0_read()
{
    u16 tmp;

    //read gyroscope
    tmp = ((u16)i2c_read_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_OUT_X_L_G));
    tmp|= ((u16)i2c_read_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_OUT_X_H_G))<<8;
    g_lsm9ds0_imu.gx = tmp;

    tmp = ((u16)i2c_read_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_OUT_Y_L_G));
    tmp|= ((u16)i2c_read_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_OUT_Y_H_G))<<8;
    g_lsm9ds0_imu.gy = tmp;

    tmp = ((u16)i2c_read_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_OUT_Z_L_G));
    tmp|= ((u16)i2c_read_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_OUT_Z_H_G))<<8;
    g_lsm9ds0_imu.gz = tmp;

    //read magnetometer
    tmp = ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_X_L_M));
    tmp|= ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_X_H_M))<<8;
    g_lsm9ds0_imu.mx = tmp;

    tmp = ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_Y_L_M));
    tmp|= ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_Y_H_M))<<8;
    g_lsm9ds0_imu.my = tmp;

    tmp = ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_Z_L_M));
    tmp|= ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_Z_H_M))<<8;
    g_lsm9ds0_imu.mz = tmp;


    //read accelerometer
    tmp = ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_X_L_A));
    tmp|= ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_X_H_A))<<8;
    g_lsm9ds0_imu.ax = tmp;

    tmp = ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_Y_L_A));
    tmp|= ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_Y_H_A))<<8;
    g_lsm9ds0_imu.ay = tmp;

    tmp = ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_Z_L_A));
    tmp|= ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_Z_H_A))<<8;
    g_lsm9ds0_imu.az = tmp;

    //read temperature
    tmp = ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_TEMP_L_XM));
    tmp|= ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_TEMP_H_XM))<<8;
    g_lsm9ds0_imu.temp = tmp;
}
