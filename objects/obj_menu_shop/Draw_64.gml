/// @desc
if state == VISUAL_STATE.ACTIVE{
ResetDraw();
draw_self();
var _top_y_buff = 50;
var _x_start = x - (sprite_width/2)
var _y_start = y + _top_y_buff;
var _index = 16;
var _y_buff = 15;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(_x_start, _y_start, main_text);
if can_buy
{	
	draw_text(_x_start, _y_start + (_index * _y_buff), "Total cost: " + string(total_cost));
} else {
	draw_set_color(c_red);
	draw_text(_x_start, _y_start + (_index * _y_buff), "Total cost: " + string(total_cost));
	_index++;
	var _diff = total_cost - obj_constant.cash;
	draw_text(_x_start, _y_start + (_index * _y_buff), "Total cost is greater than cash by: " + string(_diff));
}
//[YES] [NO] buttons

ResetDraw();
}