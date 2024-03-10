if room == rm_game
{
	if !instance_exists(obj_outline)
	{	
		outline_obj = instance_create_layer(x,y, "UtilityObjects", obj_outline);
	}
}



alarm[0] = 10;