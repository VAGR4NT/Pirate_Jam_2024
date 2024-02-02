/// @desc
event_inherited();
main_text = "You've made it to the end of day " + string(1 + obj_park.park_stats.curr_day);
option_yes.state = state;
if state == VISUAL_STATE.ACTIVE{
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
	obj_camera.target = obj_player;
	ProgressDay();
	obj_mouse.can_interact = true;
	obj_player.can_move = true;
	state = VISUAL_STATE.INACTIVE;
}