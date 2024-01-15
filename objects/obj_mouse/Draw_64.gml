
if object_sprite == -1
{
	draw_sprite_ext(sprite_index, 0, global.mouse_gui_x, global.mouse_gui_y, 1,1,0,c_white,1);
} else 
{
	draw_sprite_ext(object_sprite, 0, global.mouse_gui_x, global.mouse_gui_y, 1,1,0,c_white,1);
	draw_text(global.mouse_gui_x + 20, global.mouse_gui_y,object_held);
	draw_text(global.mouse_gui_x + 20, global.mouse_gui_y + 20,quantity);
}

