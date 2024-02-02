//event_inherited();
if instance_exists(obj_player)
{
	if distance_to_object(obj_player) <= range and obj_park.closed == false
	{
		image_blend = c_grey;
		if keyboard_check_pressed(ord("E"))
		{
			if instance_exists(obj_menu_sleep)
			{
				obj_menu_sleep.state = VISUAL_STATE.ACTIVE;
			}
		}			
	} else {
		image_blend = c_white;
	}
}