/// @desc
event_inherited();


//close parent menu and self
image_index = mouse_hover;

if instance_exists(parent_menu)
{
	if mouse_hover
	{
		if mouse_check_button_pressed(mb_any)
		{
			parent_menu.state = VISUAL_STATE.INACTIVE;
			state = VISUAL_STATE.INACTIVE;
		}
	}
}

//close if parent is destroyed
if instance_exists(parent_menu)
{	
	state = parent_menu.state;
}