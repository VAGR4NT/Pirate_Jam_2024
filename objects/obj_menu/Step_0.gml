event_inherited();

//exit_button.state = state;

if keyboard_check_pressed(vk_escape) and object_index != obj_menu_EOD_report
{
	state = VISUAL_STATE.INACTIVE;
}