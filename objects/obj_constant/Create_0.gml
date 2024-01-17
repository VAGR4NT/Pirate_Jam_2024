/// @description Controls savefiles, games state, windowed/fullscreen, GUI
//global.mouse_gui_x = window_mouse_get_x();
//global.mouse_gui_y = window_mouse_get_y();

global.window_width = window_get_width();
global.window_height = window_get_height();
gui_multiplier = 2;
og_width = 640;
og_height = 360;
width_ratio = og_width/global.window_width;
height_ratio = og_height/global.window_height;

global.fullscreen = false;

#macro MOUSE_GUI_X device_mouse_x_to_gui(0)
#macro MOUSE_GUI_Y device_mouse_y_to_gui(0)

enum VISUAL_STATE{
	ACTIVE,
	INACTIVE
}

enum BUTTON_TYPE{
	SEED//,
	//OPTIONS,
	//PAUSE,
	//EXIT
}

//enum SEED_TYPE{
//	FLOWER,
//	BUSH,
//	TREE
//}

alarm[0] = 1;