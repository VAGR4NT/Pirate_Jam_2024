/// @desc Assign assign new target
var num_nodes = instance_number(obj_NPC_movement_node);

if target == noone
{
	//find open nodes
	var _open_nodes_array = array_create(0);
	for (var i = 0; i < num_nodes; i++;)
	{
		var _inst = instance_find(obj_NPC_movement_node,i);
	    if _inst.empty == true and _inst.final_node == false and _inst != last_target
		{
			array_insert(_open_nodes_array, -1, _inst.id);
		}
	}
	
	if array_length(_open_nodes_array) == 0 //no open spots, dont care about openness and go to a gathering point
	{
		var num_gathering_points = instance_number(obj_NPC_gathering_point);
		target = instance_find(obj_NPC_gathering_point,irandom(num_gathering_points)-1);
	} else { //atleast one open spot
	
		//select node
		var _size = array_length(_open_nodes_array);
		var _index = irandom(_size -1);
		target = _open_nodes_array[_index];
		target.empty = false;
	}
}

//choose how long the npc waits before moving somewhere else
look_time = choose(12,15,18) * 60;
alarm[0] = look_time;