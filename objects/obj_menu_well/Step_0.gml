/// @desc
event_inherited();
if instance_exists(obj_well)
{
if state == VISUAL_STATE.ACTIVE{
	obj_mouse.can_interact = false;
	obj_mouse.mode = MOUSE_MODES.NOTHING;
}

//if obj_well.level != undefined{
	cost = cost_progression[obj_well.upgrade_level];
//}
//activate child menus
option_toss_coins.state = state;
option_drink.state = state;

if choice == 1 //UPGRADE
{
	//Print("chose: " + string(choice));
	choice = -1;
	state = VISUAL_STATE.INACTIVE;
	//deactivate child menus
	option_toss_coins.state = state;
	option_drink.state = state;
	
	//spend money
	if obj_constant.cash >= cost{
	obj_constant.cash -= cost;
	obj_well.upgrade_level++;
	obj_well.uses_left += 1; //double check this
	
	audio_play_sound(snd_coin_flip,1,0);
	
	obj_mouse.can_interact = true;
	
	
	////
	var _message = instance_create_layer(obj_well.x,obj_well.y,"UI",obj_message);
	_message.text = "Well upgraded to hold " + string(obj_well.upgrade_level) + " buckets!";
	_message.color = c_white;
	_message.disappear_rate = .005;
	_message.rise_amount = 0;
	_message.on_gui_layer = false;
	_message.rise_amount = -.3;
	_message.size = 40;
	} else {
	var _message = instance_create_layer(obj_well.x,obj_well.y,"UI",obj_message);
	_message.text = "Not enough cash to upgrade!";
	_message.color = c_red;
	_message.disappear_rate = .005;
	_message.rise_amount = 0;
	_message.on_gui_layer = false;
	_message.rise_amount = -.3;
	_message.size = 40;
	}
	
}
if choice == 0 //DRINK
{
	choice = -1;
	state = VISUAL_STATE.INACTIVE;
	if obj_player.water_held < obj_player.water_max{
		if obj_well.uses_left > 0
		{
			obj_player.water_held = obj_player.water_max;
			obj_well.uses_left--;
			obj_well.used_today = true;
			
			audio_play_sound(snd_water_splash,1,0);
						
			var _message = instance_create_layer(obj_well.x,obj_well.y,"UI",obj_message);
			_message.text = "Water meter filled. " + string(obj_well.uses_left) + " buckets left";
			_message.color = c_white;
			_message.disappear_rate = .005;
			_message.rise_amount = 0;
			_message.on_gui_layer = false;
			_message.rise_amount = -.3;
			_message.size = 40;
			
			
		} else {
			var _message = instance_create_layer(obj_well.x,obj_well.y,"UI",obj_message);
			_message.text = "The well will refill tomorrow";
			_message.color = c_red;
			_message.disappear_rate = .01;
			_message.rise_amount = -.3;
		}
	} else {
		var _message = instance_create_layer(obj_well.x,obj_well.y,"UI",obj_message);
		_message.text = "Water meter already full!";
		_message.color = c_red;
		_message.disappear_rate = .01;
		_message.rise_amount = -.3;
	}
	
	obj_mouse.can_interact = true;
}
}