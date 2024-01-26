image_yscale = Approach(image_yscale,y_scale_max,water_speed);

//Print("current scale: " + string(image_yscale) + "- y_scale_max: " + string(y_scale_max));

if image_yscale == y_scale_max and reached_plant == false
{
	//instance_create_layer(target.x,0,"Water", obj_water_down);
	reached_plant = true;
}

if reached_plant{
	life --;
	if life <= 0
	{
		instance_destroy(self);
	}
}
