var round_x = round(x);
var round_prevx = round(previous_x);

var round_y = round(y);
var round_prevy = round(previous_y);

if round_prevx > round_x
{
	image_xscale = -1;
}

if round_prevx < round_x
{
	image_xscale = 1;
}

if round_prevx != round_x or round_prevy != round_y
{
	image_speed = 1;
} 

if round_prevx == round_x and round_prevy == round_y{	
	image_index = 0;
	image_speed = 0;
}

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
		mp_potential_step_object(target.x, target.y, move_spd * 2, obj_parent_solid);
		
	}	
	move_spd = min(min_move_speed, distance_to_object(target) / 3);
}

if instance_exists(obj_mouse)
{
	if obj_mouse.mode == MOUSE_MODES.INSPECTING
	{
		if distance_to_object(obj_mouse) == 0
		{
			show_happiness = true;
		} else {
			show_happiness = false;
		}
	}
}

///Leave Park
if obj_park.time_number = 12 + 8 and leaving_park == false{
	//leaving_park = true; //happens in alarm[1]
	alarm[1] = 1;
	
	//Create message that NPCs are leaving
	obj_park.alarm[4] = 1;
	
}

#region Delete if under map

if y > room_height + 10
{
	instance_destroy(self);
}

#endregion Delete if under map