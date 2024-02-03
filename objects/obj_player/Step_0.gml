/// @description Runs every frame
water_max = 200 + (water_level * water_level_bonus);
water_held = clamp(water_held, 0, water_max);
//water_held = 700;
//water_held -= .05;
var _x_input = (keyboard_check(ord("D")) or keyboard_check(vk_right)) - (keyboard_check(ord("A")) or keyboard_check(vk_left));
var _y_input = (keyboard_check(ord("S")) or keyboard_check(vk_down)) -  (keyboard_check(ord("W")) or keyboard_check(vk_up))

x_speed = _x_input * move_spd;
y_speed = _y_input * move_spd;

if can_move{ //toggle to false for cutscenes

		
	#region attempt 2
		
		if (place_meeting(x+x_speed,y,obj_parent_solid)){
			var _wall = instance_place(x+x_speed, y, obj_parent_solid)
			if _wall != noone{
				if _wall.passable == false{
					var onepixel = sign(x_speed);
					while (!place_meeting(x+onepixel,y,_wall)) {
						x += onepixel;
					}
					x_speed = 0;
				}
			}
		}
	
	x += x_speed;
		
	#endregion attempt 2
		
		



	//Vertical Collisions
	if (place_meeting(x,y + y_speed, obj_parent_solid))
	{
	
		var _wall = instance_place(x, y  + y_speed,obj_parent_solid);
		if _wall.passable == false
		{
			var _one_step_distance = sign(y_speed);
			while(!place_meeting(x, y + _one_step_distance, _wall))
			{
				y += _one_step_distance;
			}
			y_speed = 0;
		}	
	}
	y += y_speed;
}


//look where you are moving
if _x_input != 0 {
	image_xscale = _x_input;
}

//Keep Player in room
y = clamp(y, 0, room_height);

if distance_to_object(obj_interactable) < 19
{
	interact_button.image_alpha = 1;
} else {
	interact_button.image_alpha = 0;
}

switch(state) // Running animation
{
case PLAYER_STATES.WALKING:
	can_move = true;
	if ((abs(_x_input) > 0) or (abs(_y_input) > 0))
	{
		sprite_index = spr_player_walk;
	}
	else {sprite_index = spr_player;}
break;

case PLAYER_STATES.WATERING:
	sprite_index = spr_player_water;
	can_move = false;
break;

case PLAYER_STATES.INTERACTING:
	sprite_index = spr_player;
	can_move = false;
break;

case PLAYER_STATES.DIGGING:
	sprite_index = spr_player_eat;
	can_move = false;
break;
}