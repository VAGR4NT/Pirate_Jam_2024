/// @desc
if state == VISUAL_STATE.ACTIVE
{
	ResetDraw();
	draw_set_alpha(text_alpha);
	draw_self();
	draw_text(x + sprite_width + 32,y + 16, string(item_option) + " " + units + ": " + string(amount))
	
	ResetDraw();
}