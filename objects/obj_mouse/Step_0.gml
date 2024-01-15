if mouse_check_button(mb_right){
	//deselect seed
	object_held = "";
	
	//sell plant with right click held interaction will be taken care of inside of the plants themselves
}

switch(object_held)
{
	case "flower":
		//object_sprite = spr_seed_button;
		quantity = obj_park.flower_seeds;
	break;
	
	case "bush":
		//object_sprite = spr_bush_button;
		quantity = obj_park.flower_seeds;
	break;
	
	case "tree":
		//object_sprite = spr_seed_button;
		quantity = obj_park.flower_seeds;
	break;
	
}


#region Outline
if instance_exists(obj_plot){
	var _plot = instance_place(x,y,obj_plot);
	if _plot != noone
	{
		show_outline = true;
		outline_obj.target = _plot;
		if _plot.occupied == false
		{
			outline_obj.image_blend = c_green; //should only appear when all checks pass
			switch(object_held)
			{
				case "flower":
					plots_needed = 1;
					outline_obj.size = 0;
				break;
			
				case "bush":
					plots_needed = 3;
					outline_obj.size = 1;
				break;
				
				case "tree":
					plots_needed = 9;
					outline_obj.size = 2;
				break;
			}
		} else { //occupied == true
			outline_obj.image_blend = c_red;
		}
	} else 
	{
		outline_obj.target = noone;
		show_outline = false;
	}
}

#endregion Outline

x = mouse_x;
y = mouse_y;