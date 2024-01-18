/// @description Change Plot Stats


var _is_pass = !occupied || (occupied && occupied_by == "flower");
if (_is_pass) {
	passable = true;
} else {
	passable = false;
}

if occupied
{
	image_blend = c_grey;
} else {
	image_blend = c_white;
}

#region Create Plant In Plot
if (occupied_by == "flower" && !occupied)
{
	occupied = true;
	if (has_sprite == false)
	{
		plant_object = instance_create_layer(x,y,"Plants",obj_flower);
		has_sprite = true;
	}
}
if (occupied_by == "bush" && !occupied)
{
	occupied = true;
	if (has_sprite == false)
	{
		plant_object = instance_create_layer(x + plot_size/2 ,y - plot_size/2,"Plants",obj_bush);
		has_sprite = true;
		var _near_plots = array_create(3,noone);
		_near_plots[0] = instance_place(x, y - plot_size, obj_plot);
		_near_plots[1] = instance_place(x + plot_size, y - plot_size, obj_plot);
		_near_plots[2] = instance_place(x + plot_size, y, obj_plot);
			for (var _i = 0; _i < array_length(_near_plots); _i++)
			{
				with ( _near_plots[_i])
				{
					occupied = true;
					passable = false;
					occupied_by = "bush";
					has_sprite = false;
					next_to_sprite = true;
					plant_object = other.plant_object;
				}
			}
	}
}
if (occupied_by == "tree" && !occupied)
{
	occupied = true;
	if (has_sprite == false)
	{
		plant_object = instance_create_layer(x ,y ,"Plants",obj_tree);
		has_sprite = true;
		var _near_plots = array_create(8,noone);
		_near_plots[0] = instance_place(x     , y - plot_size, obj_plot);
		_near_plots[1] = instance_place(x + plot_size, y - plot_size, obj_plot);
		_near_plots[2] = instance_place(x + plot_size, y     , obj_plot);
		_near_plots[3] = instance_place(x + plot_size, y + plot_size, obj_plot);
		_near_plots[4] = instance_place(x     , y + plot_size, obj_plot);
		_near_plots[5] = instance_place(x - plot_size, y + plot_size, obj_plot);
		_near_plots[6] = instance_place(x - plot_size, y     , obj_plot);
		_near_plots[7] = instance_place(x - plot_size, y - plot_size, obj_plot);
		for (var _i = 0; _i < array_length(_near_plots); _i++)
		{
			with (_near_plots[_i])
				{
					occupied = true;
					passable = false;
					occupied_by = "tree";
					has_sprite = false;
					next_to_sprite = true;
					plant_object = other.plant_object;
			}
		}
	}
}
#endregion
