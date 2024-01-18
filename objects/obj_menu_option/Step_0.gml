event_inherited();

image_index = mouse_hover;

if option == 1
{
	x = 464;
	y = 496;
	sprite_index = spr_menu_yes;
} else {
	x= 704;
	y = 496;
	sprite_index = spr_menu_no;
}

if instance_exists(parent_menu)
{
	if mouse_hover and mouse_check_button_pressed(mb_any)
	{
		parent_menu.choice = option;
	}
	
	state = parent_menu.state;
}
