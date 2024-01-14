/// @description Runs every frame

var _x_input = (keyboard_check(ord("D")) or keyboard_check(vk_right)) - (keyboard_check(ord("A")) or keyboard_check(vk_left));
var _y_input = (keyboard_check(ord("S")) or keyboard_check(vk_down)) -  (keyboard_check(ord("W")) or keyboard_check(vk_up))

x_speed = _x_input * move_spd;
y_speed = _y_input * move_spd;

if can_move{ //toggle to false for cutscenes
	//Horizontal Collisions
	if (place_meeting(x + x_speed,y, obj_grass))
	{
	
		var _wall = instance_place(x + x_speed, y,obj_grass);
		if _wall.passable == false
		{
			var _one_step_distance = sign(x_speed)
			while(!place_meeting(x + _one_step_distance, y, _wall))
			{
				x += _one_step_distance;
			}
			x_speed = 0;
		}	
	}
	x += x_speed;


	//Vertical Collisions
	if (place_meeting(x,y + y_speed, obj_grass))
	{
	
		var _wall = instance_place(x, y  + y_speed,obj_grass);
		if _wall.passable == false
		{
			var _one_step_distance = sign(y_speed)
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
if _x_input != 0{
	image_xscale = _x_input;
}