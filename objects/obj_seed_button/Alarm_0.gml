/// @description init and update vars
switch(text)
{
	case "flower":
		//sprite_index = spr_flower_seed_button;
		button_sprite = spr_flower_button; //spr_flower_seed_button; //spr_plot//
		
		if instance_exists(obj_park)
		{
			quantity = obj_park.flower_seeds;
		}
		
	break;
				
	case "bush":
		button_sprite = spr_bush_button; //spr_bush_seed_button; //spr_plot//
		
		if instance_exists(obj_park)
		{
			quantity = obj_park.bush_seeds;
		}
		
	break;
				
	case "tree":
		button_sprite = spr_tree_button; //spr_plot//
		
		if instance_exists(obj_park)
		{
			quantity = obj_park.tree_saplings;
		}
	break;
}

//y_start = global.window_height - (y_buff + (80 * button_index));
//x_start = 10
//width = sprite_get_width(button_sprite);
//height = sprite_get_height(button_sprite);

alarm[0] = 10;