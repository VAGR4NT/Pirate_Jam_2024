/// @desc
event_inherited();
enum menu_type
{
	SLEEP,
	SHOP
}

state = VISUAL_STATE.ACTIVE;

if object_index != obj_menu_EOD_report and object_index != obj_pause_button{
	exit_button = instance_create_layer(x,y,"UI",obj_menu_exit);
	exit_button.parent_menu = self;
}
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