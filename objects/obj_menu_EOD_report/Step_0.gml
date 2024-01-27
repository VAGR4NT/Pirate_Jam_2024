/// @desc
event_inherited();
main_text = "You've made it to the end of day " + string(1 + obj_park.park_stats.curr_day);
option_yes.state = state;

if choice == 1
{
	choice = -1;
	obj_camera.target = obj_player;
	ProgressDay();
	state = VISUAL_STATE.INACTIVE;
}