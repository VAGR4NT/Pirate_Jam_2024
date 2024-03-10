event_inherited();

image_index = mouse_hover;

if instance_exists(parent_menu) and state != VISUAL_STATE.INACTIVE
{
	if mouse_hover{ 
		if mouse_check_button_pressed(mb_any)
		{
			parent_menu.choice = option;
			audio_play_sound(snd_bookOpen,1,0);
		}
	}
	
	state = parent_menu.state;
}
