if mouse_on and mouse_check_button_pressed(mb_any)
{
	audio_play_sound(bookOpen,1,0);
	room_goto(rm_game);
}

image_index = mouse_on;