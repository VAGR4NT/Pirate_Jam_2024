/// @desc Handle time tracking

if time < max_time
{
	
time++;
time_number++;

//start getting dark
if time < dark_threshold
{
	night_alpha = 1;
} else {
	night_alpha = 1 - ((time/max_time)*.85);
}
night_alpha = clamp(night_alpha, 0, 1);
final_color = color_to_array(merge_color(c_blue,c_white,night_alpha));
fx_set_parameter(_fx_tint, "g_TintCol", final_color);
//Print("Changed effect alpha");
}

//Define AM or PM
if time_number < 12{
	time_suffix = "AM";
} else {
	time_suffix = "PM";
}

//Handle time going from 11am to 12pm to 1pm
if time_number > 12
{
	final_time_string = string(time_number-12) + ":00 " + time_suffix; 
} else { 
	final_time_string = string(time_number) + ":00 " + time_suffix; 
}

//Open Park
if time_number == 10
{
	park_opened = true;
	alarm[0] = 1;
}

//Force Player sleep
if time_number == 12 + 10
{
	obj_constant.EOD_menu_shown = false;
	ClosePark();
	
	//Move player to bed?
	layer_set_visible("TilesTop", false);
	obj_player.x = obj_bed.x;
	obj_player.y = obj_bed.y;
	obj_well.used_today = false;
}


///EOF
alarm[3] = hour_update