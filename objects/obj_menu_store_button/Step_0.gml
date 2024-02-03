event_inherited();

var _buff = 60;
var _ystart = 248
var _xstart = 416
var _index = 0;



image_index = mouse_hover;

if amount == 1 sprite_index = spr_plus_one_button;
if amount == -1 sprite_index = spr_minus_one_button;
if amount == 10 sprite_index = spr_plus_ten_button;
if amount == -10 sprite_index = spr_minus_ten_button;

if instance_exists(parent_menu)
{
	if mouse_check_button_pressed(mb_any){
		if mouse_hover
		{
			if type == "flower" parent_menu.num_flower_seeds += amount + (global.two_for_1 * amount);
			if type == "bush" parent_menu.num_bush_seeds += amount + (global.two_for_1 * amount);
			if type == "tree" parent_menu.num_tree_saplings += amount +(global.two_for_1 * amount);
		}
	}
	#region Clear entries when menu closed
	if parent_menu.state == VISUAL_STATE.INACTIVE
	{
		//amount = 0;
		state = parent_menu.state;
	}
	#endregion Clear entries when menu closed
	
}