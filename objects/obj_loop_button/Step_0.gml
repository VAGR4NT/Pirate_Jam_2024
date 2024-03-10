event_inherited();
image_index = global.looping_music;

if mouse_hover and mouse_check_button_pressed(mb_any)
{
	 global.looping_music = !global.looping_music;
}