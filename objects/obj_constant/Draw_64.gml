var _display_get_w = display_get_width();
var _window_get_w = window_get_width();


var _buff = 30;
var _index = 0;
var _ystart = 10;
var _xstart = 10;

ResetDraw();
//draw_text(_xstart, _ystart + (_buff * _index), _display_get_w);
//_index ++;
//draw_text(_xstart, _ystart + (_buff * _index),"window_get_width():" + string(_window_get_w));
//_index ++;
//draw_text(_xstart, _ystart + (_buff * _index),"global.window_width: " + string(global.window_width));
//_index ++;
//draw_text(_xstart, _ystart + (_buff * _index),"global.window_height: " + string(global.window_height));
//_index ++;
//draw_text(_xstart, _ystart + (_buff * _index),"display_get_gui_width: " + string(display_get_gui_width()));
//_index ++;
//draw_text(_xstart, _ystart + (_buff * _index),"display_get_gui_height: " + string(display_get_gui_height()));
//_index ++;
//draw_text(_xstart, _ystart + (_buff * _index),"obj_seed_button: " + string(instance_number(obj_seed_button)));
//_index ++;
//draw_text(_xstart, _ystart + (_buff * _index),"global.mouse_gui_x: " + string(global.mouse_gui_x));
//_index ++;
//draw_text(_xstart, _ystart + (_buff * _index),"global.mouse_gui_y: " + string(global.mouse_gui_y));
//_index ++;
//draw_text(_xstart, _ystart + (_buff * _index),"global.fullscreen: " + string(global.fullscreen));
//_index ++;
//draw_text(_xstart, _ystart + (_buff * _index),"menus: " + string(array_length(menus_array)));
//_index ++;
//draw_text(_xstart, _ystart + (_buff * _index),"CASH: " + string(cash));

//draw_set_color(c_red);
//_index ++;
//draw_text(_xstart, _ystart + (_buff * _index),"NPCs: " + string(instance_number(obj_npc)));

//if instance_exists(obj_park){
//	_index ++;
	draw_text(_xstart, _ystart + (_buff * _index),"obj_park.happiness: " + string(obj_park.park_stats.daily_happiness));
	_index ++;
//	draw_text(_xstart, _ystart + (_buff * _index),"obj_park.closed: " + string(obj_park.closed));
	//_index ++;
	//draw_text(_xstart, _ystart + (_buff * _index),"instance_number(obj_npc): " + string(instance_number(obj_npc)));
//	_index ++;
//	draw_text(_xstart, _ystart + (_buff * _index),"obj_menu_EOD_report.state: " + string(obj_menu_EOD_report.state));
//}
//_index ++;
//draw_text(_xstart, _ystart + (_buff * _index),"global.on_seed_button: " + string(global.on_seed_button));



ResetDraw();