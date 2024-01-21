/// @description Insert description here
// You can write your code in this editor
if npcs_to_spawn > 0
{
	instance_create_layer(x,y,"Player",obj_npc);
	//define NPC happiness

	npcs_to_spawn--;
}

alarm[0] = 60;