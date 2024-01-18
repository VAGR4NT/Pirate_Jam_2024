/// @desc
event_inherited();
enum menu_type
{
	SLEEP,
	SHOP
}

stop_player_movement = true;
state = VISUAL_STATE.ACTIVE;
exit_button = instance_create_layer(x,y,"UI",obj_menu_exit);
exit_button.parent_menu = self;

var _found_in_array = false;
for(var i = 0; i < array_length(obj_constant.menus_array); i++)
{
	if obj_constant.menus_array[i] == id
	{
		_found_in_array = true;
	}
}

if _found_in_array == false
{
	array_insert(obj_constant.menus_array, -1, id);
}