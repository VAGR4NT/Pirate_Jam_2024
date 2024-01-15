/// @description refresh vars
global.fullscreen = window_get_fullscreen();
global.window_width = window_get_width();
global.window_height = window_get_height();

display_set_gui_size(global.window_width, global.window_height);


//var pos = application_get_position();
//display_set_gui_maximise(0.5, 0.5, pos[0], pos[1]);

alarm[0] = 10;