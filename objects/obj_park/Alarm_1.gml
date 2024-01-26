/// @desc Spawn NPCs

//Run at beginning of days
if num_npcs > 0 and closed == false
{
	instance_create_layer(857,942,"Player",obj_npc);
	//define NPC happiness
	
	num_npcs--;
}
alarm[1] = 60;