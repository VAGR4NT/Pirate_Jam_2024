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
				//Print("using well");
			} else {
				var _message = instance_create_layer(x,y,"UI",obj_message);
				_message.text = "The well will refill tomorrow";
				_message.color = c_red;
				_message.disappear_rate = .02;
				_message.rise_amount = -.5;
			}			
		}
	} else {
		image_blend = c_white;
	}
}