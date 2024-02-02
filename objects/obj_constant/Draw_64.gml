var _display_get_w = display_get_width();
var _window_get_w = window_get_width();


var _buff = 30;
var _index = 0;
var _ystart = 10;
var _xstart = 10;

ResetDraw();

draw_text_outline(_xstart, _ystart + (_buff * _index),"Happiness Spread: " + string(round(obj_park.total_happiness) + round(obj_park.park_stats.daily_happiness)), 2, c_black, 4);
_index ++;
draw_text_outline(_xstart, _ystart + (_buff * _index),"Cash: " + string(cash), 2, c_black, 4);
_index ++;
draw_text_outline(_xstart, _ystart + (_buff * _index),"Day: " + string(1 + obj_park.park_stats.curr_day), 2, c_black, 4);
_index ++;
draw_text_outline(_xstart, _ystart + (_buff * _index),"Time: " + string(obj_park.final_time_string), 2, c_black, 4);

//_index ++;
//draw_text_outline(_xstart, _ystart + (_buff * _index),"can interact: " + string(obj_mouse.can_interact), 2, c_black, 4);




ResetDraw();