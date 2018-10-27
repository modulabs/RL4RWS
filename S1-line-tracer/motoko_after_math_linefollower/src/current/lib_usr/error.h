#ifndef _ERROR_H_
#define _ERROR_H_ 

#include "../lib_usr/lib_usr.h"

#define ERROR_ABORT                   (u32)(1)
#define ERROR_LINE_SENSOR             (u32)(2)
#define ERROR_IMU                     (u32)(3)
#define ERROR_GYRO                    (u32)(4)
#define ERROR_COMPASS                 (u32)(5)

#ifdef __cplusplus
extern "C" {
#endif

void abort_error_(u32 error_code, u32 error_param);

#ifdef __cplusplus
}
#endif

#endif
