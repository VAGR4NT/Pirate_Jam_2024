/// @desc
event_inherited();
if state == VISUAL_STATE.ACTIVE{
	obj_mouse.can_interact = false;
	obj_mouse.mode = MOUSE_MODES.NOTHING;
	
}

if global.two_for_1
{
	cost_color = c_green;
	flower_price = .5;
	bush_price = 1;
	tree_price = 1.5;
} else {
	cost_color = c_white;
	flower_price = 1;
	bush_price = 2;
	tree_price = 3;
}


num_flower_seeds = clamp(num_flower_seeds, 0, 99);
num_bush_seeds = clamp(num_bush_seeds, 0, 99);
num_tree_saplings = clamp(num_tree_saplings, 0, 99);

total_cost = (num_flower_seeds * flower_price) + (num_bush_seeds * bush_price) + (num_tree_saplings * tree_price);
if obj_constant.cash < total_cost
{
	can_buy = false;
	option_yes.image_blend = c_red;
} else {
	can_buy = true;
	option_yes.image_blend = c_white;
}

if choice == 1
{
	if can_buy
	{	
		obj_park.flower_seeds += num_flower_seeds;
		obj_park.bush_seeds += num_bush_seeds;
		obj_park.tree_saplings += num_tree_saplings;
		obj_constant.cash -= total_cost;
		var _sound = choose(snd_handleCoins, snd_handleCoins2);
		audio_play_sound(_sound,1,0);
		choice = -1;
		num_flower_seeds = 0;
		num_bush_seeds = 0;
		num_tree_saplings = 0;
		obj_mouse.can_interact = true;
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
	obj_mouse.can_interact = true;
	num_flower_seeds = 0;
	num_bush_seeds = 0;
	num_tree_saplings = 0;

}

#region Set child objects to active when parent object is active
if state = VISUAL_STATE.ACTIVE
{
	flower_minus_1_button.state = VISUAL_STATE.ACTIVE;
	flower_minus_10_button.state = VISUAL_STATE.ACTIVE;
	flower_plus_1_button.state = VISUAL_STATE.ACTIVE;
	flower_plus_10_button.state = VISUAL_STATE.ACTIVE;
	
	bush_minus_1_button.state = VISUAL_STATE.ACTIVE;
	bush_minus_10_button.state = VISUAL_STATE.ACTIVE;
	bush_plus_1_button.state = VISUAL_STATE.ACTIVE;
	bush_plus_10_button.state = VISUAL_STATE.ACTIVE;
	
	tree_minus_1_button.state = VISUAL_STATE.ACTIVE;
	tree_minus_10_button.state = VISUAL_STATE.ACTIVE;
	tree_plus_1_button.state = VISUAL_STATE.ACTIVE;
	tree_plus_10_button.state = VISUAL_STATE.ACTIVE;
	
	
	option_yes.state = VISUAL_STATE.ACTIVE;
	option_no.state = VISUAL_STATE.ACTIVE;
}
#endregion Set child objects to active when parent object is active