// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ClosePark(){
	if obj_park.closed == false{
		obj_park.closed = true;
		audio_play_sound(closing_park,1,0);

	
		/// Make NPCs go back to the entrance after this code
		var _npcs_array = array_create(0);
		for (var i = 0; i < instance_number(obj_npc); i++;)
		{
			var _inst = instance_find(obj_npc,i);
		    _inst.alarm[1] = 1;
		}
	
		//Print("Set cam to gate");
		layer_set_visible("InRoomEffect1",false);
		layer_set_visible("InRoomEffect2",false);
		obj_mouse.can_interact = false;
		obj_mouse.mode = MOUSE_MODES.NOTHING;
		obj_camera.target = obj_cam_target_for_EOD;
	}
}