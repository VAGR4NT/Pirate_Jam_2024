/// @desc
if state == VISUAL_STATE.ACTIVE{
ResetDraw();
draw_self();
var _top_y_buff = 100;
var _x_start = x - (sprite_width/2)
var _y_start = y + _top_y_buff;
var _index = 0;
var _y_buff = 30;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_outline(_x_start, _y_start, main_text,2,c_black,4);
_index++;
draw_text_outline(_x_start, _y_start + (_index * _y_buff), hours_left_warning,2,c_black,4);

//[YES] [NO] buttons

ResetDraw();
}