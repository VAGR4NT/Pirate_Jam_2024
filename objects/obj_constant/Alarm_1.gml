/// @desc Enable picture mode
global.picture_mode = true;
layer_set_visible("UI", false);
if effect_return_value == true{
	layer_set_visible("InRoomEffect1", false);
	layer_set_visible("InRoomEffect2", false);
	layer_set_visible("TilesTop", true);
}


view_set_visible(2,true);
surface_resize(application_surface, view_wport[2],view_hport[2]);
alarm[1] = -1;