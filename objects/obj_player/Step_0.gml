/// @description Runs every frame

var _x_input = (keyboard_check(ord("D")) or keyboard_check(vk_right)) - (keyboard_check(ord("A")) or keyboard_check(vk_left));
var _y_input = (keyboard_check(ord("S")) or keyboard_check(vk_down)) -  (keyboard_check(ord("W")) or keyboard_check(vk_up))

x_speed = _x_input * move_spd;
y_speed = _y_input * move_spd;

if can_move{ //toggle to false for cutscenes
	//Horizontal Collisions
	//if (place_meeting(x + x_speed,y, obj_parent_solid))
	//{
	
	//	var _wall = instance_place(x + x_speed, y,obj_parent_solid);
		
		#region attempt 1
		//var _list = ds_list_create();
		//var _num = instance_place_list(x + x_speed, y, obj_parent_solid, _list, false);
		//var _horiz_check = true;
		//if _num > 0
		//{
		//    for (var i = 0; i < _num; ++i;)
		//    {
		//        if _list[| i].passable = false{
		//			_horiz_check = false;
		//		}
		//    }
		//}
		#endregion attempt 2
		
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
	//}
		x += x_speed;
		
		#endregion attempt 2
		
		
	//	if _wall.passable == false		
	//		var _one_step_distance = sign(x_speed);
	//		while(!place_meeting(x + _one_step_distance, y, _wall))
	//		{
	//			x += _one_step_distance;
	//		}
	//		x_speed = 0;
	//	}
	//}
	//x += x_speed;


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
if _x_input != 0{
	image_xscale = _x_input;
}