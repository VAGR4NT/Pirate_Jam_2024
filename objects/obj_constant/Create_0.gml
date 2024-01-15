/// @description Controls savefiles, games state, windowed/fullscreen, GUI
global.mouse_gui_x = window_mouse_get_x();
global.mouse_gui_y = window_mouse_get_y();

global.window_width = window_get_width();
global.window_height = window_get_height();

global.fullscreen = false;

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