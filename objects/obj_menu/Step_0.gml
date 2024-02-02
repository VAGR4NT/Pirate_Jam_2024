event_inherited();

//exit_button.state = state;

if keyboard_check_pressed(vk_escape) and !dismissable
{
	state = VISUAL_STATE.INACTIVE;
}