if can_interact{
if object_sprite != -1{
	ResetDraw();
	draw_sprite_ext(object_sprite, 0,MOUSE_GUI_X, MOUSE_GUI_Y + 64, 1,1,0,c_white,1);
	
	switch(mode){
		case MOUSE_MODES.PLANTING:
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
			draw_text_outline(MOUSE_GUI_X , MOUSE_GUI_Y + 20,_string, 2, c_black, 4);
			//draw_text(global.mouse_gui_x + 20, global.mouse_gui_y + 20,quantity);
		break;
		
		case MOUSE_MODES.WATERING:
			var _string = "Watering";
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_text_outline(MOUSE_GUI_X , MOUSE_GUI_Y + 20,_string, 2, c_black, 4);
		break;
		
		case MOUSE_MODES.DIGGING:
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			var _sell_string = "Sell Value: " + string(sell_value);
			var _string = "Digging";
			
			if sell_value != 0
			{
				draw_text_outline(MOUSE_GUI_X , MOUSE_GUI_Y + 20,_sell_string, 2, c_black, 4);
			} else {
				draw_text_outline(MOUSE_GUI_X , MOUSE_GUI_Y + 20,_string, 2, c_black, 4);
			}			
		break;
		
		case MOUSE_MODES.INSPECTING:
			var _string = "Inspecting";
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_text_outline(MOUSE_GUI_X , MOUSE_GUI_Y + 20,_string, 2, c_black, 4);
		break;
	}	
	ResetDraw();	
}
}//can interact