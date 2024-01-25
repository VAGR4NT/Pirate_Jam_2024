/// @desc
event_inherited();

option_yes.state = state;
option_no.state = state;

if choice == 1
{
	Print("chose: " + string(choice));
	choice = -1;
	state = VISUAL_STATE.INACTIVE;
	ClosePark();
}
if choice == 0
{
	choice = -1;
	state = VISUAL_STATE.INACTIVE;
}