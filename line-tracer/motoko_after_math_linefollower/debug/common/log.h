#ifndef _LOG_H_
#define _LOG_H_


#include "common.h"


class CLog
{
	private:
		FILE *file;
		char *file_name;

		std::vector<std::vector<float>> log_data;
	public:
		CLog(char *file_name, u32 axis_count);
		~CLog(); 

		void add(u32 axis, float value);
		void save();

		void normalize(u32 axis);
};

#endif