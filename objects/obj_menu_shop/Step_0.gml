/// @desc
event_inherited();
total_cost = (num_flower_seeds * flower_price) + (num_bush_seeds * bush_price) + (num_tree_saplings * tree_price);
if obj_constant.cash < total_cost
{
	can_buy = false;
	option_yes.image_blend = c_red;
} else {
	can_buy = true;
	option_yes.image_blend = c_white;
}

//if can_buy
//{
//	text_color = c_white;
//} else {
//	text_color = c_red;
//}



if choice == 1
{
	if can_buy
	{	
		obj_park.flower_seeds += num_flower_seeds;
		obj_park.bush_seeds += num_bush_seeds;
		obj_park.tree_saplings += num_tree_saplings;
		obj_constant.cash -= total_cost;
		var _sound = choose(handleCoins, handleCoins2);
		audio_play_sound(_sound,1,0);
		choice = -1;
		state = VISUAL_STATE.INACTIVE;
		
	} else {
		choice = -1;
		// state stays as active
	}
	
}

if choice = 0
{
	choice = -1;
	state = VISUAL_STATE.INACTIVE;
}

#region Set child objects to active when parent object is active
if state = VISUAL_STATE.ACTIVE
{
	flower_input_button.state = VISUAL_STATE.ACTIVE;
	bush_input_button.state = VISUAL_STATE.ACTIVE;
	tree_input_button.state = VISUAL_STATE.ACTIVE;
	option_yes.state = VISUAL_STATE.ACTIVE;
	option_no.state = VISUAL_STATE.ACTIVE;
}
#endregion Set child objects to active when parent object is active