if instance_exists(obj_player)
{
	if distance_to_object(obj_player) <= range
	{
		image_blend = c_grey;
		if keyboard_check_pressed(ord("E"))
		{
			if used_today == false
			{
				obj_player.water_held = obj_player.water_max;
				used_today = true;
				Print("using well");
			}			
		}
	} else {
		image_blend = c_white;
	}
}