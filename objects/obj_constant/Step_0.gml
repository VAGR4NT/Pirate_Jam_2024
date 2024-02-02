global.on_seed_button = false;
for (var i = 0; i < instance_number(obj_seed_button); ++i;)
{
    if instance_find(obj_seed_button,i).mouse_hover == true
	{
		global.on_seed_button = true;
		break;
	}
}

if obj_menu_shop.state == VISUAL_STATE.INACTIVE
{
	if keyboard_check_pressed(ord(1))
	{
		obj_mouse.mode = MOUSE_MODES.PLANTING;
		obj_mouse.object_held = "flower";
		obj_mouse.object_sprite = flower_button1;
		obj_mouse.quantity = obj_park.flower_seeds;
	}
	
	if keyboard_check_pressed(ord(2))
	{
		obj_mouse.mode = MOUSE_MODES.PLANTING
		obj_mouse.object_held = "bush";
		obj_mouse.object_sprite = bush_button1;
		obj_mouse.quantity = obj_park.bush_seeds;

	}
	
	if keyboard_check_pressed(ord(3))
	{
		obj_mouse.mode = MOUSE_MODES.PLANTING
		obj_mouse.object_held = "tree";
		obj_mouse.object_sprite = tree_button1;
		obj_mouse.quantity = obj_park.tree_saplings;
	}
	
		
	if keyboard_check_pressed(ord(4))
	{
		if obj_player.water_held > 0
		{	
			obj_mouse.mode = MOUSE_MODES.WATERING
			obj_mouse.object_held = "";
		}
	}
	
	
	
	if keyboard_check_pressed(ord(5))
	{
		obj_mouse.mode = MOUSE_MODES.DIGGING
		obj_mouse.object_held = "";
		
	}
}