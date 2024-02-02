//event_inherited();
if instance_exists(obj_player)
{
	if distance_to_object(obj_player) <= range
	{
		image_blend = c_grey;
		if keyboard_check_pressed(ord("E"))
		{
			if instance_exists(obj_menu_shop)
			{
				obj_menu_shop.state = VISUAL_STATE.ACTIVE;
			}
			//Print("using shop");
		}
	} else {
		image_blend = c_white;
	}
}