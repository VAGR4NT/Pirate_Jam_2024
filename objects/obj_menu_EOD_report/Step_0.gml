/// @desc
event_inherited();

option_yes.state = state;

if choice == 1
{
	Print("EOD Yes")
	choice = -1;
	obj_camera.follow_target = obj_player;
	ProgressDay();
	state = VISUAL_STATE.INACTIVE;
}