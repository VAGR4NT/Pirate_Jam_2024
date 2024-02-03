
#region Goals
#region Cash
if global.money_goal_level < array_length(global.money_goal_checkpoints){
	global.money_goal = global.money_goal_checkpoints[global.money_goal_level];
	global.money_goal_popup = false;
} else {
	global.money_goals_complete = true;
}

if cash >= global.money_goal and global.money_goal_popup == false
{
	global.money_goal_popup = true;
	audio_play_sound(snd_goal_reached, 1, 0);
	
	var _old_goal = global.money_goal;
	var _message = instance_create_layer(obj_player.x,obj_player.y,"UI",obj_message);
	_message.text = "CONGRATULATIONS! \n You've reached " + string(_old_goal) + " cash!";
	_message.color = c_green;
	_message.disappear_rate = .005;
	_message.rise_amount = 0;
	_message.on_gui_layer = true;
	_message.size = 40;
	_message.gui_x = global.true_width/2;
	_message.gui_y = global.true_height/3;
	
	global.money_goal_level++;	
}


#endregion Cash

#region Planting

if global.planting_goal_level < array_length(global.planting_goal_checkpoints)
{
	global.planting_goal = global.planting_goal_checkpoints[global.planting_goal_level];
	global.planting_goal_popup = false;
} else {
	global.planting_goals_complete = true;
}

if obj_park.total_plants >= global.planting_goal and global.planting_goal_popup == false
{
	global.planting_goal_popup = true;
	audio_play_sound(snd_goal_reached, 1, 0);
	var _old_goal = global.planting_goal;
	var _message = instance_create_layer(obj_player.x,obj_player.y,"UI",obj_message);
	_message.text = "CONGRATULATIONS! \n You've planted " + string(_old_goal) + " plants!";
	_message.color = c_green;
	_message.disappear_rate = .005;
	_message.rise_amount = 0;
	_message.on_gui_layer = true;
	_message.size = 40;
	_message.gui_x = global.true_width/2;
	_message.gui_y = global.true_height/3;
	
	global.planting_goal_level++;
}

#endregion Planting

#region Visitors

if global.visitor_goal_level < array_length(global.visitor_goal_checkpoints)
{
	global.visitor_goal = global.visitor_goal_checkpoints[global.visitor_goal_level];
	global.visitor_goal_popup = false;
} else {
	global.visitor_goals_complete = true;
}

if obj_park.park_stats.daily_npc >= global.visitor_goal and global.visitor_goal_popup == false
{
	global.visitor_goal_popup = true;
	audio_play_sound(snd_goal_reached, 1, 0);
	var _old_goal = global.visitor_goal;
	var _message = instance_create_layer(obj_player.x,obj_player.y,"UI",obj_message);
	_message.text = "CONGRATULATIONS! \n You've attracted " + string(_old_goal) + " visitors!";
	_message.color = c_green;
	_message.disappear_rate = .005;
	_message.rise_amount = 0;
	_message.on_gui_layer = true;
	_message.size = 40;
	_message.gui_x = global.true_width/2;
	_message.gui_y = global.true_height/3;
	
	global.visitor_goal_level++;
}

#endregion Visitors

#region Days

if global.day_goal_level < array_length(global.day_goal_checkpoints)
{
	global.day_goal = global.day_goal_checkpoints[global.day_goal_level];
	global.day_goal_popup = false;
} else {
	global.day_goals_complete = true;
}

if obj_park.park_stats.curr_day >= global.day_goal and global.day_goal_popup == false
{
	global.day_goal_popup = true;
	audio_play_sound(snd_goal_reached, 1, 0);
	var _old_goal = global.day_goal;
	var _message = instance_create_layer(obj_player.x,obj_player.y,"UI",obj_message);
	_message.text = "CONGRATULATIONS! \n You've kept the park open for " + string(_old_goal) + " days!";
	_message.color = c_green;
	_message.disappear_rate = .005;
	_message.rise_amount = 0;
	_message.on_gui_layer = true;
	_message.size = 40;
	_message.gui_x = global.true_width/2;
	_message.gui_y = global.true_height/3;
	
	global.day_goal_level++;

}

#endregion Days

#region Happiness

if global.happy_goal_level < array_length(global.happy_goal_checkpoints)
{
	global.happy_goal = global.happy_goal_checkpoints[global.happy_goal_level];
	global.happy_goal_popup = false;
} else {
	global.happy_goals_complete = true;
}

if obj_park.total_happiness >= global.happy_goal and global.happy_goal_popup == false
{
	global.happy_goal_popup = true;
	audio_play_sound(snd_goal_reached, 1, 0);
	var _old_goal = global.happy_goal;
	var _message = instance_create_layer(obj_player.x,obj_player.y,"UI",obj_message);
	_message.text = "CONGRATULATIONS! \n You've spread " + string(_old_goal) + " happiness to your visitors!";
	_message.color = c_green;
	_message.disappear_rate = .005;
	_message.rise_amount = 0;
	_message.on_gui_layer = true;
	_message.size = 40;
	_message.gui_x = global.true_width/2;
	_message.gui_y = global.true_height/3;
	
	global.happy_goal_level++;

}

#endregion Happiness

#endregion Goals


//dont update while in picture mode so we can return to this value
if global.picture_mode == false{
	effect_return_value = layer_get_visible("InRoomEffect1");
}



#region make sure you dont place a seed as soon as you select it
global.on_seed_button = false;
for (var i = 0; i < instance_number(obj_seed_button); ++i;)
{
    if instance_find(obj_seed_button,i).mouse_hover == true
	{
		global.on_seed_button = true;
		break;
	}
}
#endregion make sure you dont place a seed as soon as you select it

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
	
	if keyboard_check_pressed(ord(6))
	{
		obj_mouse.mode = MOUSE_MODES.INSPECTING
		obj_mouse.object_held = "";
		
	}
}