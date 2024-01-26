if target != noone
{
	//move towards target/node
	if leaving_park == false
	{
		mp_potential_step_object(target.x, target.y, move_spd, obj_parent_solid);
	
		if distance_to_object(target) < 30
		{
			look_time--;
		}
		//look timer expires. Reset variables
		if look_time <= 0 
		{
			last_target = target;
			target.empty = true;
			target = noone;
		}
	} else {
		//Move out of the park
		target.empty = true;
		last_target = noone;
		mp_potential_step_object(target.x, target.y, move_spd, obj_parent_solid);
		
	}	
	move_spd = min(min_move_speed, distance_to_object(target) / 3);
}


#region Delete if under map

if y > room_height + sprite_height
{
	instance_destroy(self);
}

#endregion Delete if under map