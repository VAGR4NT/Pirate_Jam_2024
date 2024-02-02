/// @desc Spawn NPCs

//Run at beginning of days
if num_npcs > 0 
{
	if closed == false 
	{
		if park_opened == true
		{
			//instance_create_layer(855,855,"Player",obj_npc);
			instance_create_layer(855,915,"Player",obj_npc);
			//define NPC happiness
			num_npcs--;
		}
	}
}
alarm[1] = 60;