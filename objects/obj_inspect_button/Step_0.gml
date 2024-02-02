/// @description Insert description here
event_inherited();

if mouse_hover == true{
	if mouse_check_button_pressed(mb_left)
	{
		if instance_exists(obj_mouse)  and obj_mouse.can_interact
		{
			obj_mouse.mode = MOUSE_MODES.INSPECTING;
			
		}
	}
}

image_index = mouse_hover;
sprite_index = button_sprite;