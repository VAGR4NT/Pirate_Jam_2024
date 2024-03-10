//event_inherited();
if distance_to_object(obj_player) > 150
{
	image_index = 2; //sleep
}

if distance_to_object(obj_player) <= 150
and distance_to_object(obj_player) > 50
{
	image_index = 1; //timid
}

if distance_to_object(obj_player) <= 50
{
	image_index = 0; //alert
}

if instance_exists(obj_player)
{
	if distance_to_object(obj_player) <= range
	{
		image_blend = c_grey;
		if keyboard_check_pressed(ord("E"))
		{
			obj_menu_well.state = VISUAL_STATE.ACTIVE;

		}
	} else {
		image_blend = c_white;
		obj_menu_well.state = VISUAL_STATE.INACTIVE;
		obj_mouse.can_interact = true;
	}
}