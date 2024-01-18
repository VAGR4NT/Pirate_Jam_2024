#region Clear held item
if mouse_check_button(mb_right)
{
	//deselect seed
	object_held = "";
	object_sprite = -1;
	
	//sell plant with right click held interaction will be taken care of inside of the plants themselves
}
#endregion Clear held item

switch(object_held)
{
	case "flower":
		//object_sprite = spr_seed_button;
		quantity = obj_park.flower_seeds;
	break;
	
	case "bush":
		//object_sprite = spr_bush_button;
		quantity = obj_park.bush_seeds;
	break;
	
	case "tree":
		//object_sprite = spr_seed_button;
		quantity = obj_park.tree_saplings;
	break;
	
}

if quantity <= 0
{
	object_held = "";
	object_sprite = -1;
}

#region Outline
if instance_exists(obj_plot)
{
	var _plot = instance_place(x,y,obj_plot);
	if _plot != noone and object_held != ""// and quantity > 0
	{
		show_outline = true;
		outline_obj.target = _plot;	
		switch(object_held)
		{
			case "flower":
				plots_needed = 1;
				outline_obj.size = 0;
				if _plot.occupied == false
				{
					can_place = true;
				} else {
					can_place = false;
				}
			break;
			
			case "bush":
				plots_needed = 4;
				outline_obj.size = 1;
				can_place = CanPlaceSeed(plots_needed);
				if _plot.occupied == true
				{
					can_place = false;
				}
			break;
				
			case "tree":
				plots_needed = 9;
				outline_obj.size = 2;
				can_place = CanPlaceSeed(plots_needed);
				if _plot.occupied == true
				{
					can_place = false;
				}
			break;
		}
		if outline_obj.player_contact or global.on_seed_button == true
		{
			can_place = false;
		}
		
		if can_place and mouse_check_button_pressed(mb_left)
		{
			_plot.occupied = true;
			_plot.occupied_by = object_held;
			ConvertEmptyPlots(plots_needed);
			if object_held == "flower" obj_park.flower_seeds--;
			if object_held == "bush" obj_park.bush_seeds--;
			if object_held == "tree" obj_park.tree_saplings--;
			
			Print("Planted: " + string(object_held));
		}
		
	} else {
		outline_obj.target = noone;
		show_outline = false;
		can_place = false;
	}
}

if can_place
{
	outline_obj.image_blend = c_green;
} else {
	outline_obj.image_blend = c_red;
}

#endregion Outline

x = mouse_x;
y = mouse_y;