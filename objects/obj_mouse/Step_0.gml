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

x = mouse_x;
y = mouse_y;