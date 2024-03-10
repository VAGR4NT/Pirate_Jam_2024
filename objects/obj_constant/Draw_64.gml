#region In Game
if room == rm_game{
	
var _buff = 30;
var _index = 0;
var _ystart = 10;
var _xstart = 10;

ResetDraw();

if !global.picture_mode
{
	#region HUD LEFT
	draw_text_outline(_xstart, _ystart + (_buff * _index),"Happiness Spread: " + string(round(obj_park.total_happiness) + round(obj_park.park_stats.daily_happiness)), 2, c_black, 4);
	_index ++;
	draw_text_outline(_xstart, _ystart + (_buff * _index),"Cash: " + string(cash), 2, c_black, 4);
	_index ++;
	draw_text_outline(_xstart, _ystart + (_buff * _index),"Day: " + string(1 + obj_park.park_stats.curr_day), 2, c_black, 4);
	_index ++;
	draw_text_outline(_xstart, _ystart + (_buff * _index),"Time: " + string(obj_park.final_time_string), 2, c_black, 4);
	_index ++;
	//draw_text_outline(_xstart, _ystart + (_buff * _index),"num objects: " + string(instance_count), 2, c_black, 4);
	//_index ++;
	//draw_text_outline(_xstart, _ystart + (_buff * _index),"current_song_gain: " + string(global.current_song_gain), 2, c_black, 4);
	//_index ++;
	//draw_text_outline(_xstart, _ystart + (_buff * _index),"night_song_gain: " + string(global.night_song_gain), 2, c_black, 4);
	//_index ++;
	//draw_text_outline(_xstart, _ystart + (_buff * _index),"global.money_goal_level: " + string(global.money_goal_level), 2, c_black, 4);
	//_index ++;
	//draw_text_outline(_xstart, _ystart + (_buff * _index),"global.current_song " + string(global.current_song), 2, c_black, 4);
	//_index ++;
	//draw_text_outline(_xstart, _ystart + (_buff * _index),"global.shuffle " + string(global.shuffle), 2, c_black, 4);
	//_index ++;
	//draw_text_outline(_xstart, _ystart + (_buff * _index),"global.looping_music " + string(global.looping_music), 2, c_black, 4);
	//_index ++;
	//if instance_exists(obj_plot)
	//{
	//draw_text_outline(_xstart, _ystart + (_buff * _index),"# plots: " + string(instance_number(obj_plot)), 2, c_black, 4);
	//_index ++;
	//}
	#endregion HUD LEFT
	
	#region HUD RIGHT
	ResetDraw();
	var _index = 0;
	var _ystart = 10;
	var _xstart = global.true_width - 10;
	draw_set_halign(fa_right);
	draw_set_font(fnt_DPComic_40)
	draw_text_outline(_xstart, _ystart + (_buff * _index),"-GOALS-" , 2, c_black, 4);
	_index ++;
	_index ++;
	
	
	ResetDraw();
	draw_set_halign(fa_right);
	draw_set_font(fnt_DPComic_20);
	if !global.planting_goals_complete
	{
		draw_text_outline(_xstart, _ystart + (_buff * _index),"Plant " + string(global.planting_goal) + " plants", 2, c_black, 4);
	} else {
		draw_set_color(c_green);
		draw_text_outline(_xstart, _ystart + (_buff * _index),"PLANT GOALS COMPLETE!", 2, c_black, 4);
		ResetDraw();
	}
	_index ++;
	
	ResetDraw();
	draw_set_halign(fa_right);
	draw_set_font(fnt_DPComic_20);
	if !global.money_goals_complete
	{
		draw_text_outline(_xstart, _ystart + (_buff * _index),"Obtain " + string(global.money_goal) + " cash", 2, c_black, 4);
	} else {
		draw_set_color(c_green);
		draw_text_outline(_xstart, _ystart + (_buff * _index),"CASH GOALS COMPLETE!", 2, c_black, 4);
		ResetDraw();
	}
	_index ++;
	
	ResetDraw();
	draw_set_halign(fa_right);
	draw_set_font(fnt_DPComic_20);
	if !global.visitor_goals_complete
	{
		draw_text_outline(_xstart, _ystart + (_buff * _index),"Attract " + string(global.visitor_goal) + " visitors", 2, c_black, 4);
	} else {
		draw_set_color(c_green);
		draw_text_outline(_xstart, _ystart + (_buff * _index),"VISITOR GOALS COMPLETE!", 2, c_black, 4);
		ResetDraw();
	}
	_index ++;
	
	ResetDraw();
	draw_set_halign(fa_right);
	draw_set_font(fnt_DPComic_20);
	if !global.day_goals_complete
	{
		draw_text_outline(_xstart, _ystart + (_buff * _index),"Reach " + string(global.day_goal) + " days", 2, c_black, 4);
	} else {
		draw_set_color(c_green);
		draw_text_outline(_xstart, _ystart + (_buff * _index),"DAY GOALS COMPLETE!", 2, c_black, 4);
		ResetDraw();
	}
	_index ++;
	
	
	ResetDraw();
	draw_set_halign(fa_right);
	draw_set_font(fnt_DPComic_20);
	if !global.happy_goals_complete
	{
		draw_text_outline(_xstart, _ystart + (_buff * _index),"Spread " + string(global.happy_goal) + " happiness", 2, c_black, 4);
	} else {
		draw_set_color(c_green);
		draw_text_outline(_xstart, _ystart + (_buff * _index),"HAPPINESS GOALS COMPLETE!", 2, c_black, 4);
		ResetDraw();
	}
	_index ++;
	
	
	#endregion HUD RIGHT
} else {
	draw_set_font(fnt_DPComic_20);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_outline(global.true_width/2, 20, "Press ESC to Exit Picture Mode", 2, c_black, 4);
}
ResetDraw();
} //in room rm_game
#endregion In Game