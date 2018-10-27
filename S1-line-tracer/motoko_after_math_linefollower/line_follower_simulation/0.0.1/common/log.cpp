#include "log.h"

CLog::CLog(char *file_name, u32 axis_count)
{	
	this->file_name = file_name; 
	file = fopen(file_name, "w");
	fclose(file);

	u32 i;

	std::vector<float> log_line;

	for (i = 0; i < axis_count; i++)
		log_data.push_back(log_line);
}

CLog::~CLog()
{

}

void CLog::add(u32 axis, float value)
{
	log_data[axis].push_back(value);
}

void CLog::save()
{
	file = fopen(file_name, "w");

	u32 i, j;
	for (j = 0; j < log_data[0].size(); j++)
	{
		for (i = 0; i < log_data.size(); i++)
			fprintf(file, "%f ", log_data[i][j]);
		fprintf(file, "\n");
	}
	
	fclose(file);	
}

//fit values into interval <0, 1>
void CLog::normalize(u32 axis)
{
	u32 i;

	float value_min = log_data[axis][0]*100;
	float value_max = log_data[axis][0]/100.0;

	for (i = 0; i < log_data[axis].size(); i++)
	{
		if (log_data[axis][i] < value_min)
			value_min = log_data[axis][i];

		if (log_data[axis][i] > value_max)
			value_max = log_data[axis][i];
	}

	
	if (value_min != value_max)
	{
		float a = 0.0;
		float b = 1.0;

		float k = (b - a)/(value_max - value_min);
		float q = a - k*value_min;


		for (i = 0; i < log_data[axis].size(); i++)
			log_data[axis][i] = k*log_data[axis][i] + q;
	}
	else
	{
		for (i = 0; i < log_data[axis].size(); i++)
			log_data[axis][i] = 0.0;
	}
}