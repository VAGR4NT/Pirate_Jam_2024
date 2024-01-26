/// @desc Leave the park
var _open_nodes_array = array_create(0);
for (var i = 0; i < instance_number(obj_NPC_movement_node); i++;)
{
	var _inst = instance_find(obj_NPC_movement_node,i);
	if _inst.final_node == true
	{
		target = _inst;
	}
}
leaving_park = true;
alarm[0] = -1; //dont look for a new node