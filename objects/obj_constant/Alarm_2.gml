/// @desc Disable picture mode
if room == rm_game{
	global.picture_mode = false;
	layer_set_visible("UI", true);

	layer_set_visible("InRoomEffect1", effect_return_value);
	layer_set_visible("InRoomEffect2", effect_return_value);
	layer_set_visible("TilesTop", !effect_return_value);

	view_set_visible(2,false);
	surface_resize(application_surface, view_wport[0],view_hport[0]);
	alarm[2] = -1;
}