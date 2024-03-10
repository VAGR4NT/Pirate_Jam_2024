if mouse_on and mouse_check_button_pressed(mb_any)
{
	audio_play_sound(snd_bookOpen,1,0);
	room_goto(rm_credits);
}

image_index = mouse_on;