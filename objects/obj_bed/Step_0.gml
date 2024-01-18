if instance_exists(obj_player)
{
	if distance_to_object(obj_player) <= range
	{
		image_blend = c_grey;
		if keyboard_check_pressed(ord("E"))
		{//sleep prompt appears
			if instance_exists(obj_menu_sleep)
			{
				if obj_menu_sleep.state == VISUAL_STATE.ACTIVE
				{
					obj_menu_sleep.state = VISUAL_STATE.INACTIVE;
				} else {
					obj_menu_sleep.state = VISUAL_STATE.ACTIVE;
				}
			}
			Print("used bed");
		}			
	} else {
		image_blend = c_white;
	}
}