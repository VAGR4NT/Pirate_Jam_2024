/// @description Controls savefiles, games state, windowed/fullscreen, GUI
//global.mouse_gui_x = window_mouse_get_x();
//global.mouse_gui_y = window_mouse_get_y();
layer_set_visible("UI", true);

global.window_width = window_get_width();
global.window_height = window_get_height();
gui_multiplier = 2;
og_width = 640;
og_height = 360;
width_ratio = og_width/global.window_width;
height_ratio = og_height/global.window_height;
EOD_menu_shown = false;

global.fullscreen = false;

#macro MOUSE_GUI_X device_mouse_x_to_gui(0)
#macro MOUSE_GUI_Y device_mouse_y_to_gui(0)

enum VISUAL_STATE{
	ACTIVE,
	INACTIVE
}
enum PLAYER_STATES{
	WALKING,
	WATERING,
	DIGGING,
	INTERACTING
}
enum MOUSE_MODES{
	WATERING,
	PLANTING,
	DIGGING,
	NOTHING
}


cash = 50;
menus_array = array_create(0); //used in pause menu logic
global.on_seed_button = false; //used to keep players from accidentally planting seeds as soon as they select them


alarm[0] = 1;