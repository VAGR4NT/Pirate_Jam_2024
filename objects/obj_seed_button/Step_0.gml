/// @description Insert description here
event_inherited();

if mouse_hover == true{
	if mouse_check_button(mb_left)
	{
		switch(type)
		{
			case BUTTON_TYPE.SEED:
				if instance_exists(obj_mouse)
				{
					if obj_mouse.object_held != text
					{
						var _can_pickup = false;
						if text == "flower" and obj_park.flower_seeds > 0 _can_pickup = true; 
						if text == "bush" and obj_park.bush_seeds > 0 _can_pickup = true; 
						if text == "tree" and obj_park.tree_saplings> 0 _can_pickup = true; 
						if _can_pickup
						{
							obj_mouse.object_held = text;
							obj_mouse.object_sprite = button_sprite;
						} else {
							//not enough seeds!
						}
					}
				}
			break;
		}
	}
	button_image_index = 1;
} else {
	button_image_index = 0;
}