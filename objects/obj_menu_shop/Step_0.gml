/// @desc
event_inherited();
total_cost = (num_flowers * flower_price) + (num_bushes * bush_price) + (num_trees * tree_price);

if choice == 1
{
	//purchase script
	choice = -1;
	state = VISUAL_STATE.INACTIVE;
	//add sfx for purchase
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