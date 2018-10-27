#include "predictor.h"
#include "../lib_usr/math.h" 
#include "../lib_usr/line_sensor.h"	

/*

i16 predictor_models_init_table[]=
{
	6, 45, 74, 35, 127, 9, 29, 12, 44, 13, 14, 4, 15, 90, 7, 10, 
	6, 43, 78, 30, 127, 7, 19, 11, 37, 15, 13, 3, 9, 86, 7, 7, 
	4, 43, 82, 23, 128, 6, 32, 7, 30, 16, 10, 2, 8, 72, 5, 6, 
	2, 40, 88, 16, 127, 6, 23, 4, 27, 22, 10, 0, 5, 63, 5, 4, 
	2, 37, 94, 12, 120, 8, 14, 6, 25, 31, 6, 0, 2, 55, 2, 4, 
	1, 39, 98, 10, 116, 8, 19, 7, 21, 37, 3, 0, 0, 50, 2, 4, 
	0, 43, 102, 4, 110, 9, 15, 8, 21, 46, 2, 0, 0, 42, 2, 5, 
	0, 49, 106, 4, 101, 9, 13, 8, 26, 55, 0, 1, 0, 34, 5, 5, 
	0, 56, 111, 3, 92, 8, 19, 4, 32, 64, 0, 4, 0, 32, 5, 11, 
	0, 60, 113, 2, 86, 7, 17, 0, 33, 77, 0, 3, 0, 27, 4, 15, 
	0, 63, 114, 1, 78, 3, 3, 0, 37, 89, 0, 8, 0, 25, 4, 18, 
	6, 64, 117, 0, 69, 2, 5, 0, 41, 102, 1, 14, 1, 24, 4, 20, 
	9, 66, 120, 0, 63, 1, 9, 0, 46, 114, 4, 18, 8, 25, 5, 23, 
	12, 69, 119, 1, 55, 0, 19, 2, 49, 121, 4, 26, 12, 26, 2, 23, 
	16, 71, 119, 2, 50, 0, 4, 7, 53, 126, 7, 32, 19, 30, 2, 30, 
	20, 75, 119, 2, 46, 1, 4, 17, 58, 124, 12, 39, 22, 31, 2, 36
};


i16 predictor_output_init_table[] =
{
	75, 50, 50, 50, 50, 75, 50, 70, 50, 100, 50, 100, 50, 50, 50, 50 
};

*/

/*

i16 predictor_models_init_table[]=
{
	0, 14, 38, 6, 0, 0, 3, 25, 0, 79, 24, 121, 6, 0, 146, 13, 
	0, 11, 46, 0, 0, 0, 0, 20, 0, 73, 23, 136, 6, 0, 145, 5, 
	0, 10, 53, 0, 0, 0, 0, 14, 0, 64, 19, 146, 6, 0, 144, 3, 
	0, 7, 66, 0, 1, 0, 0, 8, 0, 60, 21, 160, 6, 0, 140, 1, 
	0, 6, 79, 0, 2, 0, 1, 7, 0, 53, 24, 166, 6, 0, 137, 0, 
	0, 5, 87, 0, 1, 0, 2, 3, 0, 45, 31, 183, 6, 0, 130, 0, 
	0, 4, 100, 0, 0, 0, 2, 2, 0, 44, 37, 198, 5, 0, 121, 0, 
	0, 8, 113, 0, 0, 0, 2, 0, 0, 39, 46, 209, 4, 0, 113, 0, 
	0, 12, 129, 0, 0, 1, 2, 0, 0, 34, 54, 211, 4, 0, 101, 0, 
	0, 16, 149, 0, 2, 2, 2, 1, 0, 29, 63, 204, 3, 1, 96, 0, 
	0, 23, 166, 0, 2, 2, 0, 2, 0, 24, 73, 192, 1, 2, 90, 0, 
	0, 27, 181, 0, 2, 1, 0, 6, 1, 20, 85, 180, 0, 2, 83, 0, 
	2, 36, 193, 0, 2, 0, 0, 6, 0, 19, 96, 168, 0, 3, 78, 0, 
	2, 42, 199, 0, 2, 0, 0, 6, 3, 17, 106, 156, 0, 3, 70, 0, 
	4, 43, 196, 0, 2, 0, 0, 8, 4, 17, 125, 146, 2, 4, 62, 0, 
	8, 50, 192, 1, 2, 0, 0, 12, 4, 17, 138, 132, 6, 4, 59, 3
}; 
 
i16 predictor_output_init_table[] =
{
	84, 50, 50, 50, 86, 79, 68, 50, 71, 50, 50, 50, 50, 100, 50, 50  
};

*/

/*

i16 predictor_models_init_table[] =
{
	193, 12, 54, 170, 46, 5, 10, 0, 122, 56, 8, 1, 8, 25, 0, 33, 
	199, 28, 53, 167, 43, 6, 2, 0, 120, 56, 4, 0, 0, 18, 0, 35, 
	206, 24, 52, 162, 37, 6, 2, 0, 116, 53, 0, 2, 1, 11, 1, 41, 
	213, 19, 47, 161, 22, 10, 2, 0, 107, 53, 0, 9, 0, 7, 0, 45, 
	221, 27, 43, 157, 8, 19, 2, 0, 105, 53, 0, 24, 0, 4, 0, 45, 
	227, 29, 33, 151, 0, 31, 2, 0, 94, 49, 0, 37, 0, 16, 0, 45, 
	233, 12, 23, 145, 0, 37, 2, 0, 92, 47, 0, 39, 0, 22, 0, 45, 
	237, 1, 11, 138, 0, 38, 0, 0, 83, 44, 1, 39, 0, 35, 0, 45, 
	241, 16, 7, 133, 0, 33, 0, 0, 75, 38, 2, 39, 0, 41, 0, 45, 
	241, 27, 4, 125, 0, 17, 0, 0, 70, 37, 4, 46, 0, 49, 1, 47, 
	241, 9, 12, 117, 0, 5, 0, 0, 60, 22, 17, 43, 0, 53, 1, 47, 
	241, 28, 21, 118, 0, 2, 0, 0, 53, 14, 33, 38, 0, 56, 4, 47, 
	241, 30, 35, 116, 0, 1, 0, 0, 51, 4, 52, 23, 0, 56, 8, 49, 
	241, 1, 41, 114, 0, 0, 0, 0, 48, 0, 52, 8, 2, 56, 33, 46, 
	241, 7, 47, 111, 0, 4, 0, 0, 44, 6, 52, 1, 17, 57, 46, 42, 
	239, 24, 53, 111, 0, 6, 0, 0, 40, 13, 45, 0, 52, 58, 45, 38 
};

i16 predictor_output_init_table[] =
{
	50, 52, 50, 50, 50, 73, 50, 100, 50, 50, 68, 100, 66, 50, 100, 50 
};

*/
 
i16 predictor_models_init_table[] =
{
	4,	103,	3,	6,	0,	0,	9,	0,	4,	0,	8,	1,	123,	43,	2,	0,	
	2,	104,	1,	4,	0,	0,	5,	0,	3,	0,	3,	1,	121,	35,	2,	0,	
	0,	107,	0,	4,	0,	0,	4,	0,	3,	0,	0,	0,	115,	27,	0,	0,	
	0,	112,	0,	2,	0,	0,	4,	0,	2,	0,	0,	0,	105,	25,	0,	0,	
	0,	114,	0,	2,	0,	0,	4,	0,	2,	0,	0,	0,	97,	24,	0,	0,	
	0,	117,	0,	0,	0,	0,	4,	0,	2,	0,	0,	0,	83,	27,	1,	0,	
	0,	120,	0,	0,	0,	0,	3,	0,	1,	0,	0,	0,	69,	33,	2,	0,	
	0,	121,	0,	0,	0,	1,	3,	0,	2,	0,	0,	0,	54,	37,	2,	0,	
	0,	122,	0,	0,	0,	2,	4,	2,	2,	2,	0,	0,	40,	45,	0,	0,	
	1,	121,	0,	0,	0,	1,	2,	2,	3,	2,	0,	2,	32,	54,	0,	0,	
	2,	120,	0,	0,	0,	1,	2,	2,	3,	2,	0,	2,	25,	57,	0,	0,	
	3,	118,	2,	0,	2,	2,	2,	2,	6,	4,	0,	2,	23,	65,	0,	0,	
	4,	116,	2,	0,	2,	2,	0,	4,	7,	3,	0,	4,	22,	71,	0,	2,	
	4,	114,	4,	0,	6,	3,	0,	1,	8,	4,	0,	4,	20,	79,	0,	4,	
	4,	112,	4,	0,	6,	4,	0,	4,	11,	4,	0,	4,	20,	85,	0,	4,	
	4,	110,	4,	0,	7,	2,	0,	6,	12,	2,	0,	4,	19,	94,	0,	7 
};

i16 predictor_output_init_table[] =
{
	100, 50, 100, 81, 100, 100, 89, 100, 91, 87, 81, 100, 50, 50, 62, 100
}; 

void predictor_init()
{
	u32 i, j;

	for (i = 0; i < PREDICTOR_MODEL_SIZE; i++)
		g_predictor.input[i] = 0;

	for (j = 0; j < PREDICTOR_MODELS_COUNT; j++)
		for (i = 0; i < PREDICTOR_MODEL_SIZE; i++)
			g_predictor.models[j][i] = (m_rnd()%LINE_MAX)/8;

	for (j = 0; j < PREDICTOR_MODELS_COUNT; j++)
	{
		g_predictor.output[j] = PREDICTOR_SPEED_MIN;
		g_predictor.output_error[j] = 0;
	} 

	u32 ptr = 0;
	for (i = 0; i < PREDICTOR_MODEL_SIZE; i++)
		for (j = 0; j < PREDICTOR_MODELS_COUNT; j++) 
		{
			g_predictor.models[j][i] = predictor_models_init_table[ptr];
			ptr++;
		} 

	for (j = 0; j < PREDICTOR_MODELS_COUNT; j++)
		g_predictor.output[j] = predictor_output_init_table[j];
} 

u16 predictor_process(i16 input)
{
	u32 i, j;
	for (i = (PREDICTOR_MODEL_SIZE - 1); i != 0; i--)
		g_predictor.input[i] = g_predictor.input[i-1];

	if (input < 0)
		input = -input; 

	g_predictor.input[0] = input;


	i32 min_d = PREDICTOR_MODEL_SIZE*LINE_MAX;
	i32 min_j = 0;

	for (j = 0; j < PREDICTOR_MODELS_COUNT; j++)
	{
		i32 sum = 0;

		for (i = 0; i < PREDICTOR_MODEL_SIZE; i++)
		{
			i32 tmp = g_predictor.input[i] - g_predictor.models[j][i];
			if (tmp < 0)
				tmp = -tmp;

			sum+= tmp;
		}

		if (sum < min_d)
		{
			min_d = sum;
			min_j = j;
		}
	}

	for (i = 0; i < PREDICTOR_MODEL_SIZE; i++)
	{
		u32 tmp = (PREDICTOR_LEARNING_RATE*(u32)g_predictor.models[min_j][i] + (u32)g_predictor.input[i])/(PREDICTOR_LEARNING_RATE+1);
		if (tmp > LINE_MAX)
			tmp = LINE_MAX;

		g_predictor.models[min_j][i] = tmp;
	}

	g_predictor.output_error[min_j] = (PREDICTOR_LEARNING_RATE*(u32)g_predictor.output_error[min_j] + (u32)input)/(PREDICTOR_LEARNING_RATE+1);

	u32 k = 40;

	u32 tmp = 1 - (k*g_predictor.output_error[min_j])/100;

	g_predictor.output[min_j]+= tmp;

	if (g_predictor.output[min_j] < PREDICTOR_SPEED_MIN)
		g_predictor.output[min_j] = PREDICTOR_SPEED_MIN;

	if (g_predictor.output[min_j] > PREDICTOR_SPEED_MAX)
		g_predictor.output[min_j] = PREDICTOR_SPEED_MAX;

	return g_predictor.output[min_j];
}

void predictor_print()
{
	u32 i, j;

	for (i = 0; i < PREDICTOR_MODEL_SIZE; i++)
	{
		for (j = 0; j < PREDICTOR_MODELS_COUNT; j++)
			printf_("%i ", g_predictor.models[j][i]);

		printf_("\n");
	}

	printf_("\n\n");

 	for (j = 0; j < PREDICTOR_MODELS_COUNT; j++)
		printf_("%i ", g_predictor.output[j]);		

	printf_("\n");
	for (j = 0; j < PREDICTOR_MODELS_COUNT; j++)
		printf_("%i ", g_predictor.output_error[j]);	

	printf_("\n\n\n");
}