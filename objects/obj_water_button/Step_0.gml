/// @description Insert description here
event_inherited();

if mouse_hover == true{
	if mouse_check_button_pressed(mb_left) and obj_player.water_held > 0
	{
		if instance_exists(obj_mouse)
		{
			obj_mouse.mode = MOUSE_MODES.WATERING;
			obj_mouse.object_held = noone;
		}
	}
}

image_index = mouse_hover;
sprite_index = button_sprite;