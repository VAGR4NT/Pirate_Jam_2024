/// @desc
if place_meeting(x,y,obj_player)
{
	if layer_get_visible(layer_name) == !show_layer{
		layer_set_visible(layer_name, show_layer);
		Print(string(layer_name) + " visibility set to: " + string(show_layer));
	}
}