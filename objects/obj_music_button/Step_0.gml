event_inherited();
#region New Way
image_index = !audio_group_get_gain(music_group);

#endregion New Way


#region Old Way
//if global.current_song != undefined
//{
//	image_index = audio_is_paused(global.current_song);
//} else {
//	//should never happen
//	image_index = 0;
//}
#endregion Old Way

if mouse_hover and mouse_check_button_pressed(mb_any)
{
	ToggleMusic("button")	
}