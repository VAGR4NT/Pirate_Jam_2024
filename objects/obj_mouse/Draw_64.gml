if object_sprite == -1
{
	draw_sprite_ext(spr_1px, 0, MOUSE_GUI_X, MOUSE_GUI_Y, 1,1,0,c_white,1);
} else 
{
	draw_sprite_ext(object_sprite, 0,MOUSE_GUI_X, MOUSE_GUI_Y + 64, 1,1,0,c_white,1);
	//draw_text(global.mouse_gui_x + 20, global.mouse_gui_y,object_held);
	//draw_text(global.mouse_gui_x + 20, global.mouse_gui_y + 20,quantity);
}

//draw_text(x+ 50, y, show_outline);