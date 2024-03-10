/// @desc
ResetDraw();
	var _x_buff = 50;
	var _y_buff = 25;
	var _water_bar_length = 70;
	var _water_bar_height = 70;
	var _water_bar_y_buff = 6;
if inspect == true{

	
	draw_set_font(fnt_DPComic_20);
	draw_text_outline(MOUSE_GUI_X + _x_buff,MOUSE_GUI_Y - (_y_buff * 3),"Type: " + string(plant_type_text[type]),2,c_black,8);
	draw_text_outline(MOUSE_GUI_X + _x_buff,MOUSE_GUI_Y - (_y_buff * 2),"Water: " + string(watered_perc) + "%",2,c_black,8);
	draw_text_outline(MOUSE_GUI_X + _x_buff,MOUSE_GUI_Y - (_y_buff * 1),"Health: " + string(plant_health) + "/" + string(max_plant_health),2,c_black,8);
	draw_text_outline(MOUSE_GUI_X + _x_buff,MOUSE_GUI_Y,				"Status: " + string(plant_status_text[status]),2,c_black,8);
	draw_text_outline(MOUSE_GUI_X + _x_buff,MOUSE_GUI_Y + (_y_buff * 1),"Maturity: " + string(plant_age_text[age]),2,c_black,8);
	draw_text_outline(MOUSE_GUI_X + _x_buff,MOUSE_GUI_Y + (_y_buff * 2),"Next Phase: " + string(days_until_next_phase) + " Days",2,c_black,8);
	draw_text_outline(MOUSE_GUI_X + _x_buff,MOUSE_GUI_Y + (_y_buff * 3),"Days Survived: " + string(days_survived),2,c_black,8);
	//draw_text_outline(MOUSE_GUI_X + _x_buff,MOUSE_GUI_Y + (_y_buff * 4),"size_variation: " + string(size_variation),2,c_black,8);
}
if (mouse_on and obj_mouse.mode != MOUSE_MODES.WATERING){
	draw_healthbar(MOUSE_GUI_X - _water_bar_length/2, MOUSE_GUI_Y -_water_bar_y_buff, MOUSE_GUI_X + _water_bar_length/2,MOUSE_GUI_Y -_water_bar_y_buff + _water_bar_y_buff,(watered_perc/100)*100,c_grey, c_blue, c_blue, 0,true,true);
	//draw_healthbar(MOUSE_GUI_X - _x_buff, MOUSE_GUI_Y +5, MOUSE_GUI_X + _x_buff,MOUSE_GUI_Y +7,(watered_perc/100)*100, c_black,c_red,c_green,0,true,true);
}

ResetDraw();