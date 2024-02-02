/// @description Insert description here
event_inherited();

if instance_exists(obj_player)
{
	if obj_player.water_held > 0
	{
		image_blend = c_white;
	} else {
		image_blend = c_red;
	}
}

if mouse_hover == true{
	if mouse_check_button_pressed(mb_left) 
	{
		if obj_player.water_held > 0
		{
			if instance_exists(obj_mouse)  and obj_mouse.can_interact
			{
				obj_mouse.mode = MOUSE_MODES.WATERING;
				obj_mouse.object_held = noone;
			}
		} else {
			var _message = instance_create_layer(obj_player.x,obj_player.y,"UI",obj_message);
			_message.text = "Need more water!";
			_message.color = c_red;
			_message.disappear_rate = .02;
			_message.rise_amount = -.5;
		}
	}
}

image_index = mouse_hover;
sprite_index = button_sprite;