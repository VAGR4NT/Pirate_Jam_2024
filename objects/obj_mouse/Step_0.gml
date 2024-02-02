if can_interact{
#region Clear held item
if mouse_check_button(mb_right)
{
	//deselect seed
	mode = MOUSE_MODES.NOTHING;
	
	//sell plant with right click held interaction will be taken care of inside of the plants themselves
}
#endregion Clear held item

#region Planting
if mode == MOUSE_MODES.PLANTING
{
	switch(object_held)
	{
		case "flower":
			//object_sprite = spr_seed_button;
			quantity = obj_park.flower_seeds;
		break;
	
		case "bush":
			//object_sprite = spr_bush_button;
			quantity = obj_park.bush_seeds;
		break;
	
		case "tree":
			//object_sprite = spr_seed_button;
			quantity = obj_park.tree_saplings;
		break;
	
	}

	if quantity <= 0
	{
		//object_held = "";
		//object_sprite = -1;
		mode = MOUSE_MODES.NOTHING;
	}

	#region Outline
	if instance_exists(obj_plot)
	{
		var _plot = instance_place(x,y,obj_plot);
		if _plot != noone and object_held != ""// and quantity > 0
		{
			show_outline = true;
			outline_obj.target = _plot;	
			switch(object_held)
			{
				case "flower":
					plots_needed = 1;
					outline_obj.size = 0;
					if _plot.occupied == false
					{
						can_place = true;
					} else {
						can_place = false;
					}
				break;
			
				case "bush":
					plots_needed = 4;
					outline_obj.size = 1;
					can_place = CanPlaceSeed(plots_needed);
					if _plot.occupied == true
					{
						can_place = false;
					}
				break;
				
				case "tree":
					plots_needed = 9;
					outline_obj.size = 2;
					can_place = CanPlaceSeed(plots_needed);
					if _plot.occupied == true
					{
						can_place = false;
					}
				break;
			}
			if outline_obj.player_contact or global.on_seed_button == true
			{
				can_place = false;
			}
		
			if can_place and mouse_check_button_pressed(mb_left)
			{
				_plot.occupied = true;
				_plot.occupied_by = object_held;
				ConvertEmptyPlots(plots_needed);
				if object_held == "flower" obj_park.flower_seeds--;
				if object_held == "bush" obj_park.bush_seeds--;
				if object_held == "tree" obj_park.tree_saplings--;
				var _sound = choose(click_001, click_002, click_004, click_005);
				audio_play_sound(_sound,1,0);
			
				//Print("Planted: " + string(object_held));
			}
		
		} else {
			outline_obj.target = noone;
			show_outline = false;
			can_place = false;
		}
	}

	if can_place
	{
		outline_obj.image_blend = c_green;
	} else {
		outline_obj.image_blend = c_red;
	}

	#endregion Outline
}
#endregion Planting

#region Watering
if mode == MOUSE_MODES.WATERING
{
	obj_mouse.object_held = noone;
	if obj_player.water_held <= 0
	{
		mode = MOUSE_MODES.NOTHING;
	}
	
	object_sprite = water_button1;
	if instance_exists(obj_plant)
	{
		if device_mouse_check_button_pressed(0,mb_any)
		{
			var _plant = instance_place(x,y,obj_plant);	
			if _plant != noone
			{
				if _plant.watered_perc < 100 {
			
					if _plant.status != PLANT_STATE.DEAD{
					
						if obj_water_button.mouse_hover == false
						{
							var amount_to_pour =  100 - _plant.watered_perc;
							var watered = false;
							if amount_to_pour > 0
							{
								var _water = instance_create_layer(obj_player.x,obj_player.y-33,"Water",obj_water_up)
									_water.target = _plant;
								if obj_player.water_held >= amount_to_pour
								{	
									//Below full
									if _plant.watered_perc + amount_to_pour <= 100 and watered = false
									{
										_plant.watered_perc += amount_to_pour;
										//remove water
										obj_player.water_held -= amount_to_pour;
										obj_player.state = PLAYER_STATES.WATERING;
										audio_play_sound(watering2,1,0);
										watered = true;
									}
						
									//Overflow
									if _plant.watered_perc + amount_to_pour >= 100 and watered = false
									{	
										_plant.watered_perc = 100;
						
										//remove water
										obj_player.water_held -= _plant.watered_perc + amount_to_pour - 100;
										obj_player.state = PLAYER_STATES.WATERING;
										audio_play_sound(watering2,1,0);
										watered = true;
									}
								} 
								if obj_player.water_held < amount_to_pour and obj_player.water_held > 0 
								{ //less than 25 water left in player
									//Below full
									if _plant.watered_perc + amount_to_pour <= 100 and watered = false
									{
										_plant.watered_perc += obj_player.water_held;
										//remove water
										obj_player.water_held = 0;
										obj_player.state = PLAYER_STATES.WATERING;
										audio_play_sound(watering2,1,0);
										watered = true;
									}
						
									//Overflow
									if _plant.watered_perc + amount_to_pour >= 100 and watered = false
									{	
										_plant.watered_perc = 100;
										//remove water
										obj_player.water_held -= _plant.watered_perc + amount_to_pour - 100;
										obj_player.state = PLAYER_STATES.WATERING;
										audio_play_sound(watering2,1,0);
										watered = true;
									}
								}
							}				
						} 
					} else { // plant is dead
						if obj_water_button.mouse_hover == false{
							var _message = instance_create_layer(x,y,"UI",obj_message);
							_message.text = "Plant is dead";
							_message.color = c_red;
							_message.disappear_rate = .01;
							_message.rise_amount = -.3;
						}
					}
				} else { // water is full
					if obj_water_button.mouse_hover == false{
						var _message = instance_create_layer(x,y,"UI",obj_message);
						_message.text = "Plant is fully watered";
						_message.color = c_red;
						_message.disappear_rate = .01;
						_message.rise_amount = -.3;
						}  
				}
			} else { // must hover over a plant
				if obj_water_button.mouse_hover == false{
					var _message = instance_create_layer(x,y,"UI",obj_message);
					_message.text = "Hover over a plant and click to use water";
					_message.color = c_red;
					_message.disappear_rate = .01;
					_message.rise_amount = -.3;
					}
			}
		} 
	} else if mouse_check_button_pressed(mb_left) and obj_water_button.mouse_hover == false
	{
		var _message = instance_create_layer(x,y,"UI",obj_message);
			_message.text = "Plant something first!";
			_message.color = c_red;
			_message.disappear_rate = .01;
			_message.rise_amount = -.3;
	}
} //Watering mode

#endregion Watering

#region Digging / Selling
if instance_exists(obj_plant)
{
	var _plant = instance_place(x,y,obj_plant);	
	if _plant != noone
	{
		sell_value = _plant.sell_value;	
	} else {
		sell_value = 0;
	}
}

if mode == MOUSE_MODES.DIGGING
{
	obj_mouse.object_held = noone;
	object_sprite = dig_button1;
	if instance_exists(obj_plant)
	{
		var _plant = instance_place(x,y,obj_plant);	
		if _plant != noone
		{
			//sell_value = _plant.sell_value;	
			if mouse_check_button_pressed(mb_left)
			{
				obj_player.state = PLAYER_STATES.DIGGING;
				obj_constant.cash += _plant.sell_value;
				obj_park.park_stats.daily_sold++;
				var _message = instance_create_layer(_plant.x,_plant.y,"UI",obj_message);
				_message.text = "+" + string(_plant.sell_value);
				_message.color = c_green;
				var _sound = choose(handleCoins, handleCoins2);
				audio_play_sound(_sound,1,0);
					
				
				instance_destroy(_plant);
				//set all plots to open
			}
		} 
		//else {
		//	sell_value = 0;
		//}
	}
}


#endregion Digging / Selling

#region Inspecting
if mode == MOUSE_MODES.INSPECTING
{
	obj_mouse.object_held = noone;
	object_sprite = spr_inspect_button;
	
	
}

#endregion Inspecting

if mode == MOUSE_MODES.NOTHING
{
	object_held = "";
	object_sprite = -1;
	quantity = -1;
}
}
x = mouse_x;
y = mouse_y;