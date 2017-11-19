#include "robot.h"
#include "lsm9ds0_regs.h"

i32 rgb_sensor_calibration_ambient[]	=	{694, 845, 1003, 823, 854, 924, 940, 685, 206};
i32 rgb_sensor_calibration_r[] = 				 {219, 257, 288, 236, 239, 265, 264, 197, 76};
i32 rgb_sensor_calibration_g[] = 				 {258, 316, 365, 305, 309, 342, 339, 251, 80};
i32 rgb_sensor_calibration_b[] = 				 {252, 307, 363, 293, 304, 338, 349, 260, 75};


/*
i32 rgb_sensor_calibration_ambient[]	=	{0, 0, 0, 0, 0, 0, 0, 0, 0};
i32 rgb_sensor_calibration_r[] = 				{0, 0, 0, 0, 0, 0, 0, 0, 0};
i32 rgb_sensor_calibration_g[] = 				{0, 0, 0, 0, 0, 0, 0, 0, 0};
i32 rgb_sensor_calibration_b[] = 				{0, 0, 0, 0, 0, 0, 0, 0, 0};
*/


i16 rgb_sensor_w[] =
			{	-ROBOT_LINE_STEP_W*4, -ROBOT_LINE_STEP_W*3, -ROBOT_LINE_STEP_W*2, -ROBOT_LINE_STEP_W*1,
				 ROBOT_LINE_STEP_W*1,	ROBOT_LINE_STEP_W*2,	ROBOT_LINE_STEP_W*3,	ROBOT_LINE_STEP_W*4};



CRobot::CRobot()
{
	init();
}

void CRobot::init()
{
	u32 res;
	error_code = 0;
	error_type = 0;

	res = line_sensor_init();
	if (res != 0)
	{
		error_code = res;
		error_type = ERROR_LINE_SENSOR;
		return;
	}

	line_position_sensor.on_line = 0;
	line_position_sensor.line_position = 0;
	line_position_sensor.line_color = 0;
	line_position_sensor.line_type = 0;

	obstacle_position_sensor.obstacle = 0;
	obstacle_position_sensor.obstacle_position = 0;


	res = lsm9ds0_init();
	if (res != 0)
	{
		error_code = res;
		error_type = ERROR_IMU;

		return;
	}

	reset_imu();
}


CRobot::~CRobot()
{

}


u32 CRobot::get_error_type()
{
	return error_type;
}

u32 CRobot::get_error_code()
{
	return error_code;

}


void CRobot::set_configure(struct sRobotConfigure robot_configure_)
{
	robot_configure = robot_configure_;
}


struct sRobotConfigure* CRobot::get_robot_configure()
{
	return &robot_configure;
}

struct sLinePositionSensor* CRobot::get_line_position_sensor()
{
	return &line_position_sensor;
}

struct sObstacleSensor* CRobot::get_obstacle_position_sensor()
{
	return &obstacle_position_sensor;
}

struct sIMUSensor* CRobot::get_imu_sensor()
{
	return &imu_sensor;
}

void CRobot::set_motors(i32 left, i32 right)
{
	drv8834_run(left, right);
}

void CRobot::reset_imu()
{
	imu_sensor.roll = 0;
	imu_sensor.pitch = 0;
	imu_sensor.yaw = 0;
}


void CRobot::process_rgb_sensors()
{
	rgb_read();

	line_sensor_read();
}

void CRobot::process_imu_sensor()
{
	lsm9ds0_read();

	imu_sensor.roll = imu_sensor.roll + (gx - gx_ofs)/(i32)100;
	imu_sensor.pitch = imu_sensor.pitch + (gy - gy_ofs)/(i32)100;
	imu_sensor.yaw = imu_sensor.yaw + (gz - gz_ofs)/(i32)100;
	imu_sensor.ax = ax;
}


u32 CRobot::line_sensor_init()
{
	u32 i;

	rgb_init();
	rgb_read();

	/*check correct sensor bus ID*/
	rgb_i2c_read_reg(RGB_ADDRESS,	RGB_COMMAND|RGB_ID, line_sensor_tmp);

	u32 rgb_error_result = 0;
	for (i = 0; i < ROBOT_SENSORS_COUNT; i++)
	{
		/* add error as bit mask*/
		if (line_sensor_tmp[i] != RGB_ID_VALUE)
			rgb_error_result|= (1<<i);
	}

	for (i = 0; i < ROBOT_LINE_SENSORS_COUNT; i++)
		line_sensor_raw_data_dif[i] = 0;

	line_sensor_read();
	return rgb_error_result;
}


void CRobot::line_sensor_read()
{
	u32 i;

	/* calculate obstacle position */
	obstacle_position_sensor.obstacle_position = (obstacle_position_sensor.obstacle_position*7 + rgb_get()->proximity[ROBOT_SENSORS_COUNT-1])/8;

	if (obstacle_position_sensor.obstacle_position > robot_configure.obstacle_treshold)
		obstacle_position_sensor.obstacle = ROBOT_OBSTACLE_SENSOR_FLAG_OBSTACLE;
	else
		obstacle_position_sensor.obstacle = 0;



	i32 average_ambient = 0;
	i32 average_r = 0;
	i32 average_g = 0;
	i32 average_b = 0;

	for (i = 0; i < ROBOT_LINE_SENSORS_COUNT; i++)
	{
		rgb_get()->ambient[i]-= rgb_sensor_calibration_ambient[i];
		rgb_get()->r[i]-= rgb_sensor_calibration_r[i];
		rgb_get()->g[i]-= rgb_sensor_calibration_g[i];
		rgb_get()->b[i]-= rgb_sensor_calibration_b[i];

		average_ambient+= rgb_get()->ambient[i];
		average_r+= rgb_get()->r[i];
		average_g+= rgb_get()->g[i];
		average_b+= rgb_get()->b[i];
	}

	average_ambient/= ROBOT_LINE_SENSORS_COUNT;
	average_r/=ROBOT_LINE_SENSORS_COUNT;
	average_g/=ROBOT_LINE_SENSORS_COUNT;
	average_b/=ROBOT_LINE_SENSORS_COUNT;

	for (i = 0; i < ROBOT_LINE_SENSORS_COUNT; i++)
	{
		rgb_get()->ambient[i] =	-(rgb_get()->ambient[i] - average_ambient);
		rgb_get()->r[i] = (rgb_get()->r[i] - average_r);
		rgb_get()->g[i] = (rgb_get()->g[i] - average_g);
		rgb_get()->b[i] = (rgb_get()->b[i] - average_b);
	}

	for (i = 0; i < ROBOT_LINE_SENSORS_COUNT; i++)
	{
		line_sensor_raw_data_dif[i] = rgb_get()->ambient[i];
	}

	i32 line_position = 0, value = 0, tmp = 0;

	tmp = line_sensor_raw_data_dif[3] + line_sensor_raw_data_dif[4];
	if (tmp != 0)
	{
		line_position = ( line_sensor_raw_data_dif[3]*rgb_sensor_w[3] + line_sensor_raw_data_dif[4]*rgb_sensor_w[4] )/tmp;
		value = ( line_sensor_raw_data_dif[3] + line_sensor_raw_data_dif[4])/2;
	}

	tmp = line_sensor_raw_data_dif[5] + line_sensor_raw_data_dif[4];
	if ((tmp != 0) && (line_sensor_raw_data_dif[5] > robot_configure.line_sensor_treshold))
	{
		line_position = ( line_sensor_raw_data_dif[5]*rgb_sensor_w[5] + line_sensor_raw_data_dif[4]*rgb_sensor_w[4] )/tmp;
		value = line_sensor_raw_data_dif[5];
	}

	tmp = line_sensor_raw_data_dif[2] + line_sensor_raw_data_dif[3];
	if ((tmp != 0) && (line_sensor_raw_data_dif[2] > robot_configure.line_sensor_treshold))
	{
		line_position = ( line_sensor_raw_data_dif[2]*rgb_sensor_w[2] + line_sensor_raw_data_dif[3]*rgb_sensor_w[3] )/tmp;
		value = line_sensor_raw_data_dif[2];
	}

	tmp = line_sensor_raw_data_dif[6] + line_sensor_raw_data_dif[5];
	if ((tmp != 0) && (line_sensor_raw_data_dif[6] > robot_configure.line_sensor_treshold))
	{
			line_position = ( line_sensor_raw_data_dif[6]*rgb_sensor_w[6] + line_sensor_raw_data_dif[5]*rgb_sensor_w[5] )/tmp;
			value = line_sensor_raw_data_dif[6];
	}

	tmp = line_sensor_raw_data_dif[1] + line_sensor_raw_data_dif[2];
	if ((tmp != 0) && (line_sensor_raw_data_dif[1] > robot_configure.line_sensor_treshold))
	{
			line_position = ( line_sensor_raw_data_dif[1]*rgb_sensor_w[1] + line_sensor_raw_data_dif[2]*rgb_sensor_w[2] )/tmp;
			value = line_sensor_raw_data_dif[1];
	}

	if (line_sensor_raw_data_dif[0] > robot_configure.line_sensor_treshold)
	{
		line_position = rgb_sensor_w[0];
		value = line_sensor_raw_data_dif[0];
	}

	if (line_sensor_raw_data_dif[7] > robot_configure.line_sensor_treshold)
	{
			line_position = rgb_sensor_w[7];
			value = line_sensor_raw_data_dif[7];
	}

	if (value > robot_configure.line_sensor_treshold)
	{
		if (line_position > ROBOT_LINE_MAX)
			line_position = ROBOT_LINE_MAX;

		if (line_position < -ROBOT_LINE_MAX)
			line_position = -ROBOT_LINE_MAX;

			line_position_sensor.line_position = line_position;
			line_position_sensor.on_line = ROBOT_LINE_SENSOR_FLAG_ON_LINE;
	}
	else
	{
		line_position_sensor.on_line = 0;
	}
}

i32* CRobot::get_line_sensor_raw_data_dif()
{
	return line_sensor_raw_data_dif;
}

u32 CRobot::lsm9ds0_init()
{
		u8 tmp;


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
		//i2c_write_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_CTRL_REG4_G, (1<<5));

		//500DPS range
		i2c_write_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_CTRL_REG4_G, (1<<4));


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

		u32 i, measurments = 64;

		i32 gx_ofs_sum = 0;
		i32 gy_ofs_sum = 0;
		i32 gz_ofs_sum = 0;

		for (i = 0; i < measurments; i++)
		{
				lsm9ds0_read();
				gx_ofs_sum+= gx;
				gy_ofs_sum+= gy;
				gz_ofs_sum+= gz;
		}

		gx_ofs = gx_ofs_sum / (i32)measurments;
		gy_ofs = gy_ofs_sum / (i32)measurments;
		gz_ofs = gz_ofs_sum / (i32)measurments;

		ax = 0;
		ay = 0;
		az = 0;

		mx = 0;
		my = 0;
		mz = 0;

		gx = 0;
		gy = 0;
		gz = 0;

		temp = 0;

		//success
		return 0;
}

void CRobot::lsm9ds0_read()
{
	u16 tmp;

	//read gyroscope
	tmp = ((u16)i2c_read_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_OUT_X_L_G));
	tmp|= ((u16)i2c_read_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_OUT_X_H_G))<<8;
	gx = tmp;

	tmp = ((u16)i2c_read_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_OUT_Y_L_G));
	tmp|= ((u16)i2c_read_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_OUT_Y_H_G))<<8;
	gy = tmp;

	tmp = ((u16)i2c_read_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_OUT_Z_L_G));
	tmp|= ((u16)i2c_read_reg(LSM9DS0_GYRO_ADDRESS, LSM9DS0_OUT_Z_H_G))<<8;
	gz = tmp;


	//read magnetometer
	tmp = ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_X_L_M));
	tmp|= ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_X_H_M))<<8;
	mx = tmp;

	tmp = ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_Y_L_M));
	tmp|= ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_Y_H_M))<<8;
	my = tmp;

	tmp = ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_Z_L_M));
	tmp|= ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_Z_H_M))<<8;
	mz = tmp;


	//read accelerometer
	tmp = ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_X_L_A));
	tmp|= ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_X_H_A))<<8;
	ax = tmp;

	tmp = ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_Y_L_A));
	tmp|= ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_Y_H_A))<<8;
	ay = tmp;

	tmp = ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_Z_L_A));
	tmp|= ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_Z_H_A))<<8;
	az = tmp;


	//read temperature
	tmp = ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_TEMP_L_XM));
	tmp|= ((u16)i2c_read_reg(LSM9DS0_ACC_MAG_ADDRESS, LSM9DS0_OUT_TEMP_H_XM))<<8;
	temp = tmp;
}
