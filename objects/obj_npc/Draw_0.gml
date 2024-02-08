/// @desc
ResetDraw();
draw_self();

//draw_set_color(c_red);
//if target != noone
//{
//	draw_text(x,y-20, previous_x);
//	draw_text(x,y-40, x);
//	draw_text(x,y-60, target);
//	draw_line(x,y,target.x,target.y);
//}
if show_happiness == true{
	//draw_set_font(fnt_DPComic_10);
	draw_text_outline(x,y-32, string(round(happiness)) + "%" , 2, c_black, 4);
}
ResetDraw();