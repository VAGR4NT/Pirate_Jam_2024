event_inherited();

//exit_button.state = state;

if keyboard_check_pressed(vk_escape) and dismissable
{
	//if object_get_name(object_index) == obj_menu_shop
	//{
		obj_menu_shop.num_flower_seeds = 0;
		obj_menu_shop.num_bush_seeds = 0;
		obj_menu_shop.num_tree_saplings = 0;
	//}
	
	state = VISUAL_STATE.INACTIVE;
}