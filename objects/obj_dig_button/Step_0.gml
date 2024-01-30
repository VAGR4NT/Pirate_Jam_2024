/// @description Insert description here
event_inherited();

if mouse_hover == true{
	if mouse_check_button_pressed(mb_left)
	{
		if instance_exists(obj_mouse)
		{
			obj_mouse.mode = MOUSE_MODES.DIGGING;
			
		}
	}
}

image_index = mouse_hover;
sprite_index = button_sprite;