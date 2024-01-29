/// @description Debugging Tool
ResetDraw();
draw_self();

if inspect == true{
	draw_set_font(fnt_DPComic_10);
	draw_text_outline(x + 30,y - 45,"Water: " + string(watered_perc),2,c_black,8);
	draw_text_outline(x + 30,y - 30,"Days Survived: " + string(days_survived),2,c_black,8);
	draw_text_outline(x + 30,y - 15,"Maturity: " + string(plant_age_text[age]),2,c_black,8);
	draw_text_outline(x + 30,y,"Status: " + string(plant_status_text[status]),2,c_black,8);
	draw_text_outline(x + 30,y + 15,"Health: " + string(plant_health) + "/" + string(max_plant_health),2,c_black,8);
}
ResetDraw();