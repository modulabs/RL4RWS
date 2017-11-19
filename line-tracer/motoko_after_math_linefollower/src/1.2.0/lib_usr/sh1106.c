#include "sh1106.h"
#include "font.h"

#define LCD_SH1106_WIDTH	((u32)128)
#define LCD_SH1106_HEIGHT	((u32)64)


volatile u8 LCD_SH1106_frame_buffer[LCD_SH1106_HEIGHT>>3][LCD_SH1106_WIDTH];


void LCD_SH1106_write_command(u8 command)
{
	i2c_write_reg(SH1106_ADDRESS, 0x00, command);
}

void LCD_SH1106_write_data(u8 data)
{
	i2c_write_reg(SH1106_ADDRESS, 0x40, data);
}
 
void LCD_SH1106_set_cursor(u32 x, u32 y)
{
	u8 m_col = x + 2;
	u8 m_row = y;
	LCD_SH1106_write_command(0xb0 + m_row);
	LCD_SH1106_write_command(m_col & 0xf);//set lower column address
	LCD_SH1106_write_command(0x10 | (m_col >> 4));//set higher column address
}

void LCD_SH1106_set_pixel(u32 x, u32 y, u8 value)
{
	if (value)
		LCD_SH1106_frame_buffer[y>>3][x]|= 1<<(y&7);
	else
		LCD_SH1106_frame_buffer[y>>3][x]&=~(1<<(y&7));
} 

void LCD_SH1106_set8_pixel(u32 x, u32 y, u8 value)
{
	LCD_SH1106_frame_buffer[y][x] = value;
} 
 
u8 LCD_SH1106_get_pixel(u32 x, u32 y)
{
	u8 res = LCD_SH1106_frame_buffer[y>>3][x]&(1<<(y&7));

	if (res)
		return 1;

	return 0;
}  

void LCD_SH1106_clear_buffer(u8 value)
{
	volatile u32 j, i;
	for (j = 0; j < (LCD_SH1106_HEIGHT>>3); j++)
		for (i = 0; i < LCD_SH1106_WIDTH; i++)
		{
			LCD_SH1106_frame_buffer[j][i] = value;
		}
}

void LCD_SH1106_flush_buffer()
{
	LCD_SH1106_write_command(SSD1306_SETLOWCOLUMN | 0x0); // low col = 0
	LCD_SH1106_write_command(SSD1306_SETHIGHCOLUMN | 0x0); // hi col = 0
	LCD_SH1106_write_command(SSD1306_SETSTARTLINE | 0x0); // line #0
	
	volatile u32 i, j, k;
	for (i = 0; i < (LCD_SH1106_HEIGHT>>3); i++) 
	{
		// send a bunch of data in one xmission
		LCD_SH1106_write_command(0xB0 + i + 0);		//set page address
		LCD_SH1106_write_command((0 + 2) & 0xf);	//set lower column address
		LCD_SH1106_write_command(0x10 | (0 >> 4));	//set higher column address
		u32 ptr = 0;
		for(j = 0; j < 8; j++)
		{
			i2cStart();
    		i2cWrite(SH1106_ADDRESS);
			i2cWrite(0x40);
			for (k = 0; k < (LCD_SH1106_WIDTH>>3); k++)
				i2cWrite(LCD_SH1106_frame_buffer[i][ptr++]);
			i2cStop();
		}
	}

	LCD_SH1106_set_cursor(0, 0);
}

void LCD_SH1106_init()
{
	LCD_SH1106_write_command(0xAE); /*display off*/
	LCD_SH1106_write_command(0x02); /*set lower column address*/
	LCD_SH1106_write_command(0x10); /*set higher column address*/
	LCD_SH1106_write_command(0x40); /*set display start line*/
	LCD_SH1106_write_command(0xB0); /*set page address*/
	LCD_SH1106_write_command(0x81); /*contract control*/
	LCD_SH1106_write_command(0x80); /*128*/
	LCD_SH1106_write_command(0xA1); /*set segment remap*/
	LCD_SH1106_write_command(0xA6); /*normal / reverse*/
	LCD_SH1106_write_command(0xA8); /*multiplex ratio*/
	LCD_SH1106_write_command(0x3F); /*duty = 1/32*/
	LCD_SH1106_write_command(0xad); /*set charge pump enable*/
	LCD_SH1106_write_command(0x8b); /*external VCC */
	LCD_SH1106_write_command(0x30); /*0X30---0X33 set VPP 9V liangdu!!!!*/
	LCD_SH1106_write_command(0xC8); /*Com scan direction*/
	LCD_SH1106_write_command(0xD3); /*set display offset*/
	LCD_SH1106_write_command(0x00); /* 0x20 */
	LCD_SH1106_write_command(0xD5); /*set osc division*/
	LCD_SH1106_write_command(0x80);
	LCD_SH1106_write_command(0xD9); /*set pre-charge period*/
	LCD_SH1106_write_command(0x1f); /*0x22*/
	LCD_SH1106_write_command(0xDA); /*set COM pins*/
	LCD_SH1106_write_command(0x12);
	LCD_SH1106_write_command(0xdb); /*set vcomh*/
	LCD_SH1106_write_command(0x40);
	LCD_SH1106_write_command(0xAF); /*display ON*/

 	LCD_SH1106_clear_buffer(0);  
	LCD_SH1106_flush_buffer();   

	/*
	while (1)
	{
		lcd_put_s((char*)"testing string 0123456789");
		LCD_SH1106_flush_buffer(); 

		lcd_put_s((char*)"ABqK .0123456788!");
		LCD_SH1106_flush_buffer();  
	}
	while (1)
	{
 		lcd_put_s((char*)"testing string 0123456789 next line <>!@#$ ABCDEFGHIJKLMNOPQRSTUVWXZ I .");
 		// lcd_put_s((char*)"ABqK .0123456788!");

 		//lcd_put_s((char*)".KI");
 		   

		LCD_SH1106_flush_buffer(); 
		timer_delay_ms(500);
	}
	*/
} 



void lcd_put_char_xy(u32 x, u32 y, u8 c)
{  
	u32 j, i;   

	if (c < 32)
		c = 0;   
	else   
		c-= 32;     

	/*
	u32 idx = (u32)c*FONT_WIDTH;     

	for (j = 0; j < FONT_HEIGHT; j++) 
		for (i = 0; i < FONT_WIDTH; i++) 
		{  
			u32 tmp_x = FONT_HEIGHT - j + x;
			u32 tmp_y = i + y;  

			u8 b = font_data[idx + i]; 
			u8 shift = j;


			if (tmp_x > LCD_SH1106_WIDTH)
				tmp_x = LCD_SH1106_WIDTH;

			if (tmp_y > LCD_SH1106_HEIGHT)
				tmp_y = LCD_SH1106_HEIGHT; 
		
			#ifdef FONT_FLIP 
			LCD_SH1106_set_pixel(LCD_SH1106_WIDTH - tmp_x, LCD_SH1106_HEIGHT - tmp_y, b&(1<<shift));
			#else
			LCD_SH1106_set_pixel(tmp_x, tmp_y, b&(1<<shift));
			#endif
		}  
	*/    
	u32 idx = (u32)c*FONT_WIDTH*(FONT_HEIGHT>>3);     

	for (j = 0; j < FONT_HEIGHT; j++) 
		for (i = 0; i < FONT_WIDTH; i++) 
		{  
			u32 tmp_x = FONT_HEIGHT - j + x;
			u32 tmp_y = i + y;  

			u8 b = font_data[idx + i + 8*(j/8)]; 
			u8 shift = j;

			if (tmp_x > LCD_SH1106_WIDTH)
				tmp_x = LCD_SH1106_WIDTH;

			if (tmp_y > LCD_SH1106_HEIGHT)
				tmp_y = LCD_SH1106_HEIGHT; 
		
			#ifdef FONT_FLIP 
			LCD_SH1106_set_pixel(LCD_SH1106_WIDTH - tmp_x, LCD_SH1106_HEIGHT - tmp_y, b&(1<<shift));
			#else
			LCD_SH1106_set_pixel(tmp_x, tmp_y, b&(1<<shift));
			#endif
		} 
}

void lcd_put_s(char *s)
{
	LCD_SH1106_clear_buffer(0);

	char c;
	u32 x = 0, y = 0;
	while ( (c = *s++) != '\0')
	{ 
		lcd_put_char_xy(x, y, c);
		x+= FONT_HEIGHT; 
		if (x >= LCD_SH1106_WIDTH)
		{
			x = 0;
			y+= FONT_WIDTH;
		} 
	}

	LCD_SH1106_flush_buffer();
}

float sqrt_(float x)
{
	u32 i;
	float res = x/2.0;
	for (i = 0; i < 16; i++)
		res =0.5*(res + x/res);

	return res;
}



#define MANDELBROT_SET_DEMO

void LCD_SH1106_fractal_demo()
{


	#ifdef JULIA_SET_DEMO
	float time = 0.0;

	while (1)
	{
		u32 j, i;

		/*
		float cr = -0.8;
		float ci = 0.156;
	 	*/
	 	float r = 0.5;
		float x = time;
	 	float cr = x;
		float ci = sqrt_(r - x*x);

		time+= r/32.0;
		
		if (time >= r)
			time = 0.0;
		


		for (j = 0; j < LCD_SH1106_HEIGHT; j++)
			for (i = 0; i < LCD_SH1106_WIDTH; i++)
			{ 
				float re = (i/(1.0*LCD_SH1106_WIDTH) - 0.5) * 4.0;
				float im = (j/(1.0*LCD_SH1106_HEIGHT) - 0.5) * 4.0;

				u32 iterations = 16; 
	 
				float zre = re;
				float zim = im; 
				float zre_ = 0.0;
				float zim_ = 0.0;

				do
				{
					zre_ = cr + zre*zre - zim*zim;
					zim_ = ci + 2.0*zre*zim;

					zre = zre_;
					zim = zim_;

					iterations--;
				} 
				while ((zre*zre + zim*zim < 4.0) && (iterations != 0));

				if (iterations == 0)
					LCD_SH1106_set_pixel(i, j, 1);
				else
					LCD_SH1106_set_pixel(i, j, 0);
			}
	
		LCD_SH1106_flush_buffer();
	}
	#endif

	#ifdef MANDELBROT_SET_DEMO
	float zoom = 1.0;
	u32 state = 0;

	while (1)
	{
		u32 j, i;
	 
		for (j = 0; j < LCD_SH1106_HEIGHT; j++)
			for (i = 0; i < LCD_SH1106_WIDTH; i++)
			{ 
				float re = -1.108 + (i/(1.0*LCD_SH1106_WIDTH) - 0.5) * 4.0*zoom;
				float im = 0.230 + (j/(1.0*LCD_SH1106_HEIGHT) - 0.5) * 2.0*zoom;

				u32 iterations = 16*(1.0 + 1.0/zoom); 
	 
				float zre = 0.0;
				float zim = 0.0;
				float zre_ = 0.0;
				float zim_ = 0.0;

				do
				{
					zre_ = re + zre*zre - zim*zim;
					zim_ = im + 2.0*zre*zim;

					zre = zre_;
					zim = zim_;

					iterations--;
				} 
				while ((zre*zre + zim*zim < 4.0) && (iterations != 0));

				if (iterations == 0)
					LCD_SH1106_set_pixel(i, j, 1);
				else
					LCD_SH1106_set_pixel(i, j, 0);
			}

		switch (state)
		{
			case 0:
					zoom*= 0.9;

					if (zoom < 0.05)
						state = 1;

					break;

			case 1:
					zoom*= 1.1;

					if (zoom >= 1.0)
						state = 0;

					break;

		}
		
		LCD_SH1106_flush_buffer();
	}
	#endif
}
