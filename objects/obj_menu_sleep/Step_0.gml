/// @desc
time_diff = obj_park.sleep_time - obj_park.time; //calculate in step event. number of in game hours left until force-sleep
hours_left_warning = "You still have " + string(time_diff) + " hours left until the end of the day";

event_inherited();
if state == VISUAL_STATE.ACTIVE{
	obj_mouse.can_interact = false;
	obj_mouse.mode = MOUSE_MODES.NOTHING;
}
//if instance_exists(obj_park)
//{
//	if obj_park.closed == true
//	{
//		state = VISUAL_STATE.INACTIVE;
//		exit;
//	}
//}

option_yes.state = state;
option_no.state = state;

if choice == 1
{
	//Print("chose: " + string(choice));
	choice = -1;
	state = VISUAL_STATE.INACTIVE;
	option_yes.state = state;
	option_no.state = state;
	obj_constant.EOD_menu_shown = false;
	ClosePark();
	obj_mouse.can_interact = true;
	obj_well.alarm[0] = 1;
}
if choice == 0
{
	choice = -1;
	state = VISUAL_STATE.INACTIVE;
	obj_mouse.can_interact = true;
}