/// @desc
if place_meeting(x,y,obj_player)
{
	for (var i = 0; i < array_length(layer_names); i++)
	{
		if layer_get_visible(layer_names[i]) == !show_layer{
			layer_set_visible(layer_names[i], show_layer);
			//Print(string(layer_name) + " visibility set to: " + string(show_layer));
		}
	}
}