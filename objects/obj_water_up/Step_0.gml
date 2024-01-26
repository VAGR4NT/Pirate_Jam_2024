if activated == true{
	image_yscale = Approach(image_yscale,y_scale_max,water_speed);
	//Print("current scale: " + string(image_yscale) + "- y_scale_max: " + string(y_scale_max));
	if image_yscale == y_scale_max and created_water == false
	{
		with(instance_create_layer(target.x,0,"Water", obj_water_down))
		{
			target = other.target;
		}
		created_water = true;
	}

	if created_water{
		life --;
		if life <= 0
		{
			instance_destroy(self);
		}
	}
}