#include "common.h"
#include "serial_port.h"
#include "parse_telemetry.h"
#include "opengl_gui/opengl_gui.h"

#include "opengl_gui_tabs/menu.h"
#include "opengl_gui_tabs/debug_tab.h"
#include "opengl_gui_tabs/sensors_tab.h"
#include "opengl_gui_tabs/setup_tab.h"

#include <thread>



extern struct sOpenGLGuiButtonFieldData	menu_data;


extern struct sOpenGLGuiTextFieldData	debug_tab_textfield_terminal_data;
extern struct sOpenGLGuiSliderFieldData	debug_tab_sliderfield_controller_data;
extern struct sOpenGLGuiBarFieldData	  debug_tab_barfield_sensor_data;
extern struct sOpenGLGuiImuData				debug_tab_imu_data;
extern struct sOpenGLGuiGraphData			debug_tab_graph_data;


extern struct sOpenGLGuiBarFieldData	  sensors_tab_line_sensor_data;
extern struct sOpenGLGuiBarFieldData	  sensors_tab_ambient_sensor_data;
extern struct sOpenGLGuiBarFieldData	  sensors_tab_red_sensor_data;
extern struct sOpenGLGuiBarFieldData	  sensors_tab_green_sensor_data;
extern struct sOpenGLGuiBarFieldData	  sensors_tab_blue_sensor_data;
extern struct sOpenGLGuiGraphData	    	sensors_tab_obstacle_sensor_data;
extern struct sOpenGLGuiSliderFieldData	sensors_tab_treshold_sensor_data;



std::vector<class CItemsContainer*> opengl_gui_containers;

void gui_init()
{
	opengl_gui_containers.push_back(new CItemsContainer());
	container_debug_tab_init(opengl_gui_containers[opengl_gui_containers.size()-1]);

	opengl_gui_containers.push_back(new CItemsContainer());
	container_sensors_tab_init(opengl_gui_containers[opengl_gui_containers.size()-1]);

	opengl_gui_containers.push_back(new CItemsContainer());
	container_setup_tab_init(opengl_gui_containers[opengl_gui_containers.size()-1]);


	opengl_gui_containers.push_back(new CItemsContainer());
	menu_tab_init(opengl_gui_containers[opengl_gui_containers.size()-1]);
}

void gui_uninit()
{
	u32 i;
	for (i = 0; i < opengl_gui_containers.size(); i++)
		delete opengl_gui_containers[i];
}


void gui_thread()
{
	class COpenGLGui	*opengl_gui;

	u32 i;
	u32 width =  1024;
	u32 height = (width*9)/16;

	gui_init();
	opengl_gui = new COpenGLGui(width, height, &opengl_gui_containers);


	while (getch() != 27)
	{
		if (menu_data.buttons[0].flag)
		{
			for (i = 0; i < opengl_gui_containers.size()-1; i++)
				opengl_gui_containers[i]->clear_visible();

			opengl_gui_containers[0]->set_visible();

			menu_data.buttons[0].flag = 0;
		}


		if (menu_data.buttons[1].flag)
		{
			for (i = 0; i < opengl_gui_containers.size()-1; i++)
				opengl_gui_containers[i]->clear_visible();

			opengl_gui_containers[1]->set_visible();

			menu_data.buttons[1].flag = 0;
		}


		if (menu_data.buttons[2].flag)
		{
			for (i = 0; i < opengl_gui_containers.size()-1; i++)
				opengl_gui_containers[i]->clear_visible();

			opengl_gui_containers[2]->set_visible();

			menu_data.buttons[2].flag = 0;
		}

		opengl_gui->process();
		usleep(1000*100);
	}


	delete opengl_gui;
	gui_uninit();
}

int main()
{
	u32 i;
	srand(time(NULL));

	std::thread c_gui_thread(gui_thread);

	class CSerialPort *sp;
	class CParseTelemetry *parse_telemetry;



	sp = new CSerialPort((char*)"/dev/ttyUSB0");
	parse_telemetry = new CParseTelemetry();

	u32 line_data_graph_ptr = 0;
	u32 obstacle_data_graph_ptr = 0;

	float yaw = 0.0;
	while (getch() != 27)
	{
		//char c = sp->serial_read();
		char c = '\0';

		if (parse_telemetry->parse(c) != 0)
		{
			parse_telemetry->print();


			for (i = 0; i < 8; i++)
				debug_tab_barfield_sensor_data.values[i] = parse_telemetry->get_rgb_telemetry().dif[i];

			debug_tab_graph_data.functions[0].points[line_data_graph_ptr].y = parse_telemetry->get_line_telemetry().line_position;
			line_data_graph_ptr = (line_data_graph_ptr + 1)%debug_tab_graph_data.functions[0].points.size();



			debug_tab_sliderfield_controller_data.sliders[0].value = parse_telemetry->get_controll_telemetry().kp/1000.0;
			debug_tab_sliderfield_controller_data.sliders[1].value = parse_telemetry->get_controll_telemetry().ki/1000.0;
			debug_tab_sliderfield_controller_data.sliders[2].value = parse_telemetry->get_controll_telemetry().kd/10000.0;
			debug_tab_sliderfield_controller_data.sliders[3].value = parse_telemetry->get_controll_telemetry().kd2/10000.0;
			debug_tab_sliderfield_controller_data.sliders[4].value = parse_telemetry->get_controll_telemetry().speed_max/1000.0;

			debug_tab_imu_data.roll = 0.0;
		  debug_tab_imu_data.pitch = 0.0;
		  debug_tab_imu_data.yaw = PI*parse_telemetry->get_imu_telemetry().yaw/180.0;

			char str[1024];
			sprintf(str, "line state = [%i %i %i]", parse_telemetry->get_line_telemetry().on_line, parse_telemetry->get_line_telemetry().line_position, parse_telemetry->get_line_telemetry().line_sensor_treshold);
			debug_tab_textfield_terminal_data.lines[1] = str;

			sprintf(str, "obstacle state = [%i %i %i]", parse_telemetry->get_line_telemetry().obstacle, parse_telemetry->get_line_telemetry().obstacle_position, parse_telemetry->get_line_telemetry().obstacle_treshold);
			debug_tab_textfield_terminal_data.lines[2] = str;

			yaw+= (parse_telemetry->get_imu_telemetry().gz/100) ;

			printf(">>> %f\n", yaw);


			sprintf(str, "imu = [%i %i %i] [%i %i %i] [%i %i %i] : [%i %i %i]\n",
								parse_telemetry->get_imu_telemetry().gx,
								parse_telemetry->get_imu_telemetry().gy,
								parse_telemetry->get_imu_telemetry().gz,

								parse_telemetry->get_imu_telemetry().mx,
								parse_telemetry->get_imu_telemetry().my,
								parse_telemetry->get_imu_telemetry().mz,

								parse_telemetry->get_imu_telemetry().ax,
								parse_telemetry->get_imu_telemetry().ay,
								parse_telemetry->get_imu_telemetry().az,

								parse_telemetry->get_imu_telemetry().roll,
								parse_telemetry->get_imu_telemetry().pitch,
								(i32)(yaw));
			debug_tab_textfield_terminal_data.lines[3] = str;







			for (i = 0; i < 8; i++)
				sensors_tab_line_sensor_data.values[i] = parse_telemetry->get_rgb_telemetry().dif[i];

			for (i = 0; i < 8; i++)
				sensors_tab_ambient_sensor_data.values[i] = parse_telemetry->get_rgb_telemetry().ambient[i];

			for (i = 0; i < 8; i++)
				sensors_tab_red_sensor_data.values[i] = parse_telemetry->get_rgb_telemetry().r[i];

			for (i = 0; i < 8; i++)
				sensors_tab_green_sensor_data.values[i] = parse_telemetry->get_rgb_telemetry().g[i];

			for (i = 0; i < 8; i++)
				sensors_tab_blue_sensor_data.values[i] = parse_telemetry->get_rgb_telemetry().b[i];

			sensors_tab_treshold_sensor_data.sliders[0].value = parse_telemetry->get_line_telemetry().line_sensor_treshold;
			sensors_tab_treshold_sensor_data.sliders[1].value = parse_telemetry->get_line_telemetry().obstacle_treshold;

			sensors_tab_obstacle_sensor_data.functions[0].points[obstacle_data_graph_ptr].y = parse_telemetry->get_line_telemetry().obstacle_position;
			obstacle_data_graph_ptr = (obstacle_data_graph_ptr+1)%sensors_tab_obstacle_sensor_data.functions[0].points.size();




		}

	}

	printf("program done\n");
	return 0;
}
