if object_sprite != -1{
	ResetDraw();
	draw_sprite_ext(object_sprite, 0,MOUSE_GUI_X, MOUSE_GUI_Y + 64, 1,1,0,c_white,1);
	
	var _string = string(object_held);
	var _seed_type = "";
	if object_held == "flower" or object_held == "bush"{
		_seed_type = " seeds: ";
	} else {
		_seed_type = " saplings: ";
	}

	_string = _string + _seed_type + string(quantity); 
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(MOUSE_GUI_X , MOUSE_GUI_Y + 20,_string);
	//draw_text(global.mouse_gui_x + 20, global.mouse_gui_y + 20,quantity);
	ResetDraw();


	
}