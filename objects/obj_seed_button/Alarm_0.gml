/// @description init and update vars
switch(text)
{
	case "flower":
		button_sprite = flower_button1; 
		
		if instance_exists(obj_park)
		{
			quantity = obj_park.flower_seeds;
		}
		
	break;
				
	case "bush":
		button_sprite = bush_button1; //spr_bush_seed_button; //spr_plot//
		
		if instance_exists(obj_park)
		{
			quantity = obj_park.bush_seeds;
		}
		
	break;
				
	case "tree":
		button_sprite = tree_button1; //spr_plot//
		
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