/// @desc
event_inherited();

option_yes.state = state;
option_no.state = state;

if choice == 1
{
	ProgressDay();
	choice = -1;
	state = VISUAL_STATE.INACTIVE;
}
if choice = 0
{
	choice = -1;
	state = VISUAL_STATE.INACTIVE;
}