event_inherited();

switch (option)
{
	case MENU_OPTIONS.DRINK:
		sprite_index = spr_menu_drink;
		message_text = "Drinks left: " + string(obj_well.uses_left);
	break;
	case MENU_OPTIONS.TOSS_COINS:
		sprite_index = spr_menu_toss_coin;
		message_text = "Toss " + string(obj_menu_well.cost) + " coins?";
	break;
}
image_index = mouse_hover;

if instance_exists(parent_menu) and state != VISUAL_STATE.INACTIVE
{
	if mouse_hover{ 
		if mouse_check_button_pressed(mb_any)
		{
			parent_menu.choice = option;
			audio_play_sound(bookOpen,1,0);
		}
	}
	
	state = parent_menu.state;
}
