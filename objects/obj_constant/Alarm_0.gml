/// @description refresh vars
global.fullscreen = window_get_fullscreen();
global.window_width = window_get_width();
global.window_height = window_get_height();

global.fullscreen = window_get_fullscreen();

width_ratio = og_width/global.window_width;
height_ratio = og_height/global.window_height;

global.true_width = global.window_width * (width_ratio * gui_multiplier);
global.true_height = global.window_height * (height_ratio * gui_multiplier);

display_set_gui_size(global.window_width * (width_ratio * gui_multiplier), global.window_height * (height_ratio * gui_multiplier));

#region Keep Player in place while menus are visible
var _freeze_player = false;
if array_length(menus_array) > 0
{
	for(var i = 0; i < array_length(menus_array); i ++)
	{
		if menus_array[i].state == VISUAL_STATE.ACTIVE and menus_array[i].dismissable == true
		{
			_freeze_player = true;
		}
	}
}

if instance_exists(obj_player)
{
	obj_player.can_move = !_freeze_player;
}

#endregion Keep Player in place while menus are visible

if instance_exists(obj_park){
	if obj_park.closed == true
	{
		if instance_number(obj_npc) == 0 and EOD_menu_shown == false //and obj_menu_EOD_report.state == VISUAL_STATE.INACTIVE
		{
			EOD_menu_shown = true;
			obj_menu_EOD_report.state = VISUAL_STATE.ACTIVE;
		}
	}
}


//Pause song after muting (Night Shift)
if audio_sound_get_gain(global.current_song) == 0
{
	if audio_is_playing(global.current_song)
	{
		audio_pause_sound(global.current_song);
	}
}

if !audio_group_is_loaded(music_group)
{
    audio_group_load(music_group);
}

alarm[0] = 10;