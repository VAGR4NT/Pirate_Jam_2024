if target != noone
{
	//move towards target/node
	if leaving_park == false
	{
		mp_potential_step_object(target.x, target.y, move_spd, obj_parent_solid);
	}
	//else {
	//	mp_linear_step_object(target.x, target.y, move_spd,)
	//}
	move_spd = min(min_move_speed,distance_to_object(target) / 3)
	
	look_time--;
	//look timer expires. Reset variables
	if look_time <= 0 
	{
		target.empty = true;
		target = noone;
	}
}

