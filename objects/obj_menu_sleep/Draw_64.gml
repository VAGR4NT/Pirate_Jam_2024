/// @desc
if state == VISUAL_STATE.ACTIVE{
ResetDraw();
draw_self();
var _top_y_buff = 50;
var _x_start = x - (sprite_width/2)
var _y_start = y + _top_y_buff;
var _index = 1;
var _y_buff = 30;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(_x_start, _y_start, main_text);
draw_text(_x_start, _y_start + (_index * _y_buff), hours_left_warning);

//[YES] [NO] buttons

ResetDraw();
}