//global.mouse_gui_x = window_mouse_get_x();
//global.mouse_gui_y = window_mouse_get_y();



//global.window_width = window_get_width();
//global.window_height = window_get_height();

global.on_seed_button = false;
for (var i = 0; i < instance_number(obj_seed_button); ++i;)
{
    if instance_find(obj_seed_button,i).mouse_hover == true
	{
		global.on_seed_button = true;
		break;
	}
}
