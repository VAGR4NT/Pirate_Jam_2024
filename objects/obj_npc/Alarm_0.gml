/// @desc Assign assign new target

if target == noone
{
	//find open nodes
	var _open_nodes_array = array_create(0);
	for (var i = 0; i < instance_number(obj_NPC_movement_node); i++;)
	{
		var _inst = instance_find(obj_NPC_movement_node,i);
	    if _inst.empty == true and _inst.final_node == false
		{
			array_insert(_open_nodes_array, -1, _inst.id);
		}
	}
	
	//select node
	var _size = array_length(_open_nodes_array);
	var _index = irandom(_size -1);
	target = _open_nodes_array[_index];
	target.empty = false;
}

//choose how long the npc waits before moving somewhere else
look_time = choose(7,10,12) * 60;
alarm[0] = look_time;