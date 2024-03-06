event_inherited();
if global.current_song != undefined
{
	image_index = audio_is_paused(global.current_song);
} else {
	//should never happen
	image_index = 0;
}
if mouse_hover and mouse_check_button_pressed(mb_any)
{
	ToggleMusic("button")
}