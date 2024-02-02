/// @desc
if on_gui_layer{
	ResetDraw();
	draw_set_color(color);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	if size == 10
	{
		draw_set_font(fnt_DPComic_10)
	}
	if size == 20
	{
		draw_set_font(fnt_DPComic_20)
	}
	if size == 40
	{
		draw_set_font(fnt_DPComic_40)
	}
	draw_text_outline(gui_x,gui_y,text,2,c_black,4)
	ResetDraw();
}







