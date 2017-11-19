#include "parse_telemetry.h"




/*
// printf_(">>>L ");
struct sRobotLineTelemetry
{
  i32 on_line;
  i32 line_position;
  i32 line_sensor_treshold;

  i32 obstacle;
  i32 obstacle_position;
  i32 obstacle_treshold;
};

// printf_(">>>I ");
struct sRobotIMUTelemetry
{
  i32 gx, gy, gz;
  i32 mx, my, mz;
  i32 ax, ay, az;
  i32 roll, pitch, yaw;
};


// printf_(">>S ");
struct sRobotRGBTelemetry
{
  i32 dif[LINE_SENSORS_COUNT];
  i32 ambient[LINE_SENSORS_COUNT];
  i32 r[LINE_SENSORS_COUNT];
  i32 g[LINE_SENSORS_COUNT];
  i32 b[LINE_SENSORS_COUNT];
};



//printf_(">>C ");
struct sRobotControllTelemetry
{
  i32 line_sensor_treshold, obstacle_treshold, use_predictor;

  i32 kp, ki, kd, kd2;
  i32 ks1, ks2, speed_min, speed_max;
  i32 line_search_time, line_search_speed;
};
*/









CParseTelemetry::CParseTelemetry()
{
  buffer_ptr = 0;
  clear_buffer();

  u32 i;
  for (i = 0; i < LINE_SENSORS_COUNT; i++)
  {

  }

}

CParseTelemetry::~CParseTelemetry()
{

}

u32 is_number(char c)
{
  if ( (c >= '0') && (c <= '9') )
    return 1;

  return 0;
}

i32 parse_int(char *buffer, u32 *ptr_next)
{
  u32 ptr = 0;
  i32 sgn = 1;
  i32 num = 0;


  while ((buffer[ptr] != '\0') && (is_number(buffer[ptr]) == 0) && (buffer[ptr] != '-'))
  {
    ptr++;
  }

  *ptr_next = ptr;
  if (buffer[ptr] == '\0')
    return num;

  if (buffer[ptr] == '-')
  {
    sgn = -1;
    ptr++;
  }


  while ((buffer[ptr] != '\0') && (is_number(buffer[ptr]) != 0))
  {
    num = 10*num + (buffer[ptr]-'0');
    ptr++;
  }

  *ptr_next = ptr;

  return num*sgn;
}


u32 CParseTelemetry::parse(char c)
{
  buffer[buffer_ptr] = c;
  buffer_ptr = (buffer_ptr+1)%TELEMETRY_BUFFER_SIZE;
  buffer[TELEMETRY_BUFFER_SIZE-1] = '\0';

  if (c != '\n')
    return 0;


  u32 res = 0;

  if (buffer_is('L'))
  {
    buffer_ptr = 0;
    u32 ptr_next = 0;
    char *buf = buffer;

    buf = buf + ptr_next;
    line_telemetry.on_line = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    line_telemetry.line_position = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    line_telemetry.line_sensor_treshold = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    line_telemetry.obstacle = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    line_telemetry.obstacle_position = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    line_telemetry.obstacle_treshold = parse_int(buf, &ptr_next);

    res = 1;
  }

  if (buffer_is('I'))
  {
    buffer_ptr = 0;
    u32 ptr_next = 0;
    char *buf = buffer;

    buf = buf + ptr_next;
    imu_telemetry.gx = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    imu_telemetry.gy = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    imu_telemetry.gz = parse_int(buf, &ptr_next);


    buf = buf + ptr_next;
    imu_telemetry.mx = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    imu_telemetry.my = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    imu_telemetry.mz = parse_int(buf, &ptr_next);


    buf = buf + ptr_next;
    imu_telemetry.ax = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    imu_telemetry.ay = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    imu_telemetry.az = parse_int(buf, &ptr_next);


    buf = buf + ptr_next;
    imu_telemetry.roll = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    imu_telemetry.pitch = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    imu_telemetry.yaw = parse_int(buf, &ptr_next);

    res = 1;
  }

  if (buffer_is('S'))
  {
    buffer_ptr = 0;
    u32 i, ptr_next = 0;
    char *buf = buffer;

    for (i = 0; i < LINE_SENSORS_COUNT; i++)
    {
      buf = buf + ptr_next;
      rgb_telemetry.dif[i] = parse_int(buf, &ptr_next);
    }

    for (i = 0; i < LINE_SENSORS_COUNT; i++)
    {
      buf = buf + ptr_next;
      rgb_telemetry.ambient[i] = parse_int(buf, &ptr_next);
    }

    for (i = 0; i < LINE_SENSORS_COUNT; i++)
    {
      buf = buf + ptr_next;
      rgb_telemetry.r[i] = parse_int(buf, &ptr_next);
    }

    for (i = 0; i < LINE_SENSORS_COUNT; i++)
    {
      buf = buf + ptr_next;
      rgb_telemetry.g[i] = parse_int(buf, &ptr_next);
    }

    for (i = 0; i < LINE_SENSORS_COUNT; i++)
    {
      buf = buf + ptr_next;
      rgb_telemetry.b[i] = parse_int(buf, &ptr_next);
    }

    res = 1;
  }

  if (buffer_is('C'))
  {
    buffer_ptr = 0;
    u32 ptr_next = 0;
    char *buf = buffer;

    buf = buf + ptr_next;
    controll_telemetry.line_sensor_treshold = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    controll_telemetry.obstacle_treshold = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    controll_telemetry.use_predictor = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    controll_telemetry.kp = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    controll_telemetry.ki = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    controll_telemetry.kd = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    controll_telemetry.kd2 = parse_int(buf, &ptr_next);


    buf = buf + ptr_next;
    controll_telemetry.ks1 = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    controll_telemetry.ks2 = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    controll_telemetry.speed_min = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    controll_telemetry.speed_max = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    controll_telemetry.line_search_time = parse_int(buf, &ptr_next);

    buf = buf + ptr_next;
    controll_telemetry.line_search_speed = parse_int(buf, &ptr_next);
  }

  buffer_ptr = 0;
  clear_buffer();
  return res;
}

void CParseTelemetry::clear_buffer()
{
  u32 i;
  for (i = 0; i < TELEMETRY_BUFFER_SIZE; i++)
    buffer[i] = '\0';
}

void CParseTelemetry::print()
{
  u32 i;

  printf("line state = \n");
  printf("%i %i %i %i %i %i \n",
            line_telemetry.on_line,
            line_telemetry.line_position,
            line_telemetry.line_sensor_treshold,
            line_telemetry.obstacle,
            line_telemetry.obstacle_position,
            line_telemetry.obstacle_treshold);
  printf("\n");


  printf("imu state = \n");
  printf("[%i %i %i] [%i %i %i] [%i %i %i] [%i %i %i]\n",
            imu_telemetry.gx,
            imu_telemetry.gy,
            imu_telemetry.gz,

            imu_telemetry.mx,
            imu_telemetry.my,
            imu_telemetry.mz,

            imu_telemetry.ax,
            imu_telemetry.ay,
            imu_telemetry.az,

            imu_telemetry.roll,
            imu_telemetry.pitch,
            imu_telemetry.yaw);
    printf("\n");

    printf("rgb sensors = \n");
    for (i = 0; i < LINE_SENSORS_COUNT; i++)
      printf("%i ", rgb_telemetry.dif[i]);
    printf("\n");

    for (i = 0; i < LINE_SENSORS_COUNT; i++)
      printf("%i ", rgb_telemetry.ambient[i]);
    printf("\n");


    for (i = 0; i < LINE_SENSORS_COUNT; i++)
      printf("%i ", rgb_telemetry.r[i]);
    printf("\n");


    for (i = 0; i < LINE_SENSORS_COUNT; i++)
      printf("%i ", rgb_telemetry.g[i]);
    printf("\n");

    for (i = 0; i < LINE_SENSORS_COUNT; i++)
      printf("%i ", rgb_telemetry.b[i]);
    printf("\n");
    printf("\n");


    printf("controller parameters = \n");

    printf("%i %i %i\n",
        controll_telemetry.line_sensor_treshold,
        controll_telemetry.obstacle_treshold,
        controll_telemetry.use_predictor);

    printf("%i %i %i %i\n",
            controll_telemetry.kp,
            controll_telemetry.ki,
            controll_telemetry.kd,
            controll_telemetry.kd2);

    printf("%i %i %i %i\n",
            controll_telemetry.ks1,
            controll_telemetry.ks2,
            controll_telemetry.speed_min,
            controll_telemetry.speed_max);

    printf("%i %i\n",
            controll_telemetry.line_search_time,
            controll_telemetry.line_search_speed);

    printf("\n");

    printf("\n\n\n\n");
}


struct sRobotLineTelemetry CParseTelemetry::get_line_telemetry()
{
  return line_telemetry;
}

struct sRobotIMUTelemetry CParseTelemetry::get_imu_telemetry()
{
  return imu_telemetry;
}


struct sRobotRGBTelemetry CParseTelemetry::get_rgb_telemetry()
{
  return rgb_telemetry;
}


struct sRobotControllTelemetry CParseTelemetry::get_controll_telemetry()
{
  return controll_telemetry;
}



bool CParseTelemetry::buffer_is(char c)
{
  u32 i;
  for (i = 0; i < TELEMETRY_BUFFER_SIZE; i++)
    if (buffer[i] == c)
      return true;

  return false;
}
