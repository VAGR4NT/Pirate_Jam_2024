if instance_exists(obj_player)
{
	if distance_to_object(obj_player) <= range
	{
		image_blend = c_grey;
		if keyboard_check_pressed(ord("E"))
		{
			//Shop prompt appears
			//while prompt is open, in_use = true, obj_player.can_move = false;
			Print("using shop");
		}
	} else {
		image_blend = c_white;
	}
}