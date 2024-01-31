event_inherited();

//exit_button.state = state;

if keyboard_check_pressed(vk_escape) and object_index != obj_menu_EOD_report and object_index != obj_pause_button
{
	state = VISUAL_STATE.INACTIVE;
}