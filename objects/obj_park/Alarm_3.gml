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

if happy_hour_day == true and (happy_hour == time_number or  happy_hour == time_number+1  or  happy_hour == time_number+2)
{
	global.two_for_1 = true;
	if sale_popup_created == false
	{
		alarm[5] = 1;
		sale_popup_created = true;
		audio_play_sound(snd_sale_begins,1,0);
	}
} else {
	global.two_for_1 = false;
	sale_popup_created = false;
}

//Start Nighttime music
if time_number == 12 + 6
{
var _song = choose(snd_night1, snd_night2);
audio_pause_sound(global.current_song);
audio_play_sound(_song, 1, 1);
global.night_song = _song;
}
//Force Player sleep
if time_number == 12 + 10
{
	Print("forcing player to sleep at: " + string(time));
	obj_constant.EOD_menu_shown = false;
	ClosePark();
	
	//Move player to bed?
	layer_set_visible("TilesTop", false);
	obj_player.x = obj_bed.x;
	obj_player.y = obj_bed.y;
	obj_well.alarm[0] = 1;
}


///EOF
alarm[3] = hour_update