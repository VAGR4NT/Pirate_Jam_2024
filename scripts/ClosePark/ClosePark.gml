// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ClosePark(){
	
	//Move camera to the park entrance
	
	
	/// Make NPCs go back to the entrance after this code
	var _npcs_array = array_create(0);
	for (var i = 0; i < instance_number(obj_npc); i++;)
	{
		var _inst = instance_find(obj_npc,i);
	    _inst.alarm[1] = 1;
	}
	
	/*
	Once all NPCs have left: 
	- fade out 
	- show End of day report
	- fade in
	
	- obj_park.closed = false;
	
	*/
}