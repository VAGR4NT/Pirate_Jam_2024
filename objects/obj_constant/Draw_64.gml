var _display_get_w = display_get_width();
var _window_get_w = window_get_width();


var _buff = 30;
var _index = 0;
var _ystart = 10;
var _xstart = 10;

ResetDraw();

draw_text_outline(_xstart, _ystart + (_buff * _index),"Happiness: " + string(obj_park.park_stats.daily_happiness), 2, c_black, 4);
_index ++;
draw_text_outline(_xstart, _ystart + (_buff * _index),"Cash: " + string(cash), 2, c_black, 4);
_index ++;
draw_text_outline(_xstart, _ystart + (_buff * _index),"Day: " + string(1 + obj_park.park_stats.curr_day), 2, c_black, 4);

//draw_text(_xstart, _ystart + (_buff * _index),"instance_number(obj_npc): " + string(instance_number(obj_npc)));
//	_index ++;
//	draw_text(_xstart, _ystart + (_buff * _index),"obj_menu_EOD_report.state: " + string(obj_menu_EOD_report.state));
//}
//_index ++;
//draw_text(_xstart, _ystart + (_buff * _index),"global.on_seed_button: " + string(global.on_seed_button));



ResetDraw();