/// @desc
event_inherited();
main_text = "You've made it to the end of day " + string(1 + obj_park.park_stats.curr_day);
option_yes.state = state;
if state == VISUAL_STATE.ACTIVE{
	//dglobal.picture_mode = false;
	obj_mouse.can_interact = false;
	obj_mouse.mode = MOUSE_MODES.NOTHING;
	obj_player.can_move = false;
}

if state = VISUAL_STATE.ACTIVE
{
	if obj_menu_shop.state == VISUAL_STATE.ACTIVE
	{
		obj_menu_shop.state = VISUAL_STATE.INACTIVE;
	}
	if obj_menu_sleep.state == VISUAL_STATE.ACTIVE
	{
		obj_menu_sleep.state = VISUAL_STATE.INACTIVE;
	}
}


if choice == 1
{
	choice = -1;
	obj_constant.cash += obj_park.EOD_bonus;
	if audio_is_playing(snd_closing_park)
	{
		audio_stop_sound(snd_closing_park);
	}
	
	var _sound = choose(snd_handleCoins, snd_handleCoins2);
	audio_play_sound(_sound,1,0);
	obj_camera.target = obj_player;
	ProgressDay();
	obj_mouse.can_interact = true;
	obj_player.can_move = true;
	state = VISUAL_STATE.INACTIVE;
}