/// @desc
ResetDraw();
if inspect == true{
	var _x_buff = 50;
	var _y_buff = 25;
	
	draw_set_font(fnt_DPComic_20);
	draw_text_outline(MOUSE_GUI_X + _x_buff,MOUSE_GUI_Y - (_y_buff * 3),"Water: " + string(watered_perc) + "%",2,c_black,8);
	draw_text_outline(MOUSE_GUI_X + _x_buff,MOUSE_GUI_Y - (_y_buff * 2),"Days Survived: " + string(days_survived),2,c_black,8);
	draw_text_outline(MOUSE_GUI_X + _x_buff,MOUSE_GUI_Y - (_y_buff * 1),"Maturity: " + string(plant_age_text[age]),2,c_black,8);
	draw_text_outline(MOUSE_GUI_X + _x_buff,MOUSE_GUI_Y,				"Status: " + string(plant_status_text[status]),2,c_black,8);
	draw_text_outline(MOUSE_GUI_X + _x_buff,MOUSE_GUI_Y + (_y_buff * 1),"Health: " + string(plant_health) + "/" + string(max_plant_health),2,c_black,8);
	draw_text_outline(MOUSE_GUI_X + _x_buff,MOUSE_GUI_Y + (_y_buff * 2),"Next Phase: " + string(days_until_next_phase) + " Days",2,c_black,8);
}
ResetDraw();