/// @desc
if state == VISUAL_STATE.ACTIVE{
ResetDraw();
draw_set_alpha(.3);
draw_set_color(c_black);
draw_rectangle(-10,-10,global.true_width + 10, global.true_height+10,false);
ResetDraw();

draw_self();
var _top_y_buff = 50;
var _x_start = x - (sprite_width/2)
var _y_start = y + _top_y_buff;
var _index = 1;
var _y_buff = 30;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_outline(_x_start, _y_start - 10, main_text,2, c_black, 4);
draw_text_outline(_x_start, _y_start + (_index * _y_buff), sub_text_1,2, c_black, 4);
_index++;
if obj_park.park_stats.daily_npc == 1{
	draw_text_outline(_x_start, _y_start + (_index * _y_buff), string(obj_park.park_stats.daily_npc) + " person visited the park",2, c_black, 4);
} else {
	draw_text_outline(_x_start, _y_start + (_index * _y_buff), string(obj_park.park_stats.daily_npc) + " people visited the park",2, c_black, 4);
}

_index++;
if obj_park.park_stats.daily_planted == 1{
	draw_text_outline(_x_start, _y_start + (_index * _y_buff), string(obj_park.park_stats.daily_planted) + " plant was planted",2, c_black, 4);
} else {
	draw_text_outline(_x_start, _y_start + (_index * _y_buff), string(obj_park.park_stats.daily_planted) + " plants were planted",2, c_black, 4);
}

_index++;
if obj_park.park_stats.daily_matured == 1{
	draw_text_outline(_x_start, _y_start + (_index * _y_buff), string(obj_park.park_stats.daily_matured) + " plant matured",2, c_black, 4);
} else {
	draw_text_outline(_x_start, _y_start + (_index * _y_buff), string(obj_park.park_stats.daily_matured) + " plants matured",2, c_black, 4);
}

_index++;
if obj_park.park_stats.daily_sold == 1{
	draw_text_outline(_x_start, _y_start + (_index * _y_buff), string(obj_park.park_stats.daily_sold) + " plant was sold",2, c_black, 4);
} else {
	draw_text_outline(_x_start, _y_start + (_index * _y_buff), string(obj_park.park_stats.daily_sold) + " plants were sold",2, c_black, 4);
}

_index++;
if obj_park.park_stats.daily_died == 1{
	draw_text_outline(_x_start, _y_start + (_index * _y_buff), string(obj_park.park_stats.daily_died) + " plant died",2, c_black, 4);
} else {
	draw_text_outline(_x_start, _y_start + (_index * _y_buff), string(obj_park.park_stats.daily_died) + " plants died",2, c_black, 4);
}

_index++;
draw_text_outline(_x_start, _y_start + (_index * _y_buff), string(round(obj_park.park_stats.daily_happiness)) + " happiness spread",2, c_black, 4);


_index++;
_index++;
draw_text_outline(_x_start, _y_start + (_index * _y_buff),  "Ready for tomorrow?",2, c_black, 4);

//[YES] button

ResetDraw();
}