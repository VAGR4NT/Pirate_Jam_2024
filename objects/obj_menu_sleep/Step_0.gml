/// @desc
event_inherited();

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
}
if choice == 0
{
	choice = -1;
	state = VISUAL_STATE.INACTIVE;
}