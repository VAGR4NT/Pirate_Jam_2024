///If the file exists pull up the data from the slot i choose
///Havent checked if that data is there yet
function scrLoad() {
	show_debug_message("Start scrLoad function: \n")
	if (file_exists("savedgame.sav")){///global.file_choice
		show_debug_message("savedgame.sav exists")
		var _wrapper = scrLoadJsonFromFile("savedgame.sav");
		var _list = _wrapper[? "ROOT"]; //"ROOT" ///string(global.file_choice)
		{
			for (var i = 0; i<ds_list_size(_list); i++){
				var _map = _list[| i];
				////Load File
				#region Variables
					obj_park.park_stats.curr_day = _map[? "curr_day"];
					obj_park.flower_seeds = _map[? "flower_seeds"];
					obj_park.bush_seeds = _map[? "bush_seeds"];
					obj_park.tree_saplings = _map[? "tree_saplings"];
					obj_park.total_happiness = _map[? "total_happiness"];
					obj_constant.cash = _map[? "cash"];
					obj_player.water_level = _map[? "water_level"];
					obj_player.water_held = _map[? "water_held"];
					obj_well.upgrade_level = int64(_map[? "obj_well.upgrade_level"]);
					obj_well.uses_left = int64(_map[? "obj_well.uses_left"]);
					global.money_goal_level = _map[? "money_goal_level"];
					global.planting_goal_level = _map[? "planting_goal_level"];
					global.visitor_goal_level = _map[? "visitor_goal_level"];
					global.day_goal_level = _map[? "day_goal_level"];
					global.happy_goal_level = _map[? "happy_goal_level"];
				#endregion
				
				#region Recreate objects
					var _plants_string = _map[? "plants_list"];
					
					var _plants_array = string_split(_plants_string, "-");
					Print("Num Plants: ");
					Print(array_length(_plants_array));
					var _num_plants = array_length(_plants_array);
					for (var j=0; j < _num_plants; j++)
					{
						Print(_plants_array[j]);
						var _plant_info = string_split(_plants_array[j], ",");
						
						#region Show each piece of plant info
						//for (var u = 0; u < array_length(_plant_info); u++)
						//{
						//	Print(_plant_info[u]);
						//}
						#endregion
						
						
						//Print("plant info length")
						//Print(array_length(_plant_info))
					
						if _plant_info[0] != ""{
							var _name = string_replace(_plant_info[0],"-","");		
							Print(_name);
							var _age = _plant_info[1];
							var _x = int64(_plant_info[2]);					
							var _y = int64(_plant_info[3]);
							var _status = int64(_plant_info[4]);  
							var _watered_perc = int64(_plant_info[5]);  
							var _plant_health = int64(_plant_info[6]);  
							var _size_variation = int64(_plant_info[7]);  
							var _days_survived = int64(_plant_info[8]);  
							var _death_recorded = int64(_plant_info[9]);
							var _maturity_recorded = int64(_plant_info[10]);

							with(instance_create_layer(_x, _y, "Plants",asset_get_index(_name)))
							{
								status = _status;
								watered_perc =_watered_perc;
								plant_health = _plant_health;
								size_variation = _size_variation;
								days_survived = _days_survived;
								age = _age;
								death_recorded = _death_recorded;
								maturity_recorded = _maturity_recorded;
							}
						}
					}
					
					
				
				#endregion Recreate objects
			}
		ds_map_destroy(_wrapper);
		//if room == rm_save_files{
		//	room_goto(oStatus.level + global.level_room_buff); //correct?
		//}
		} 
	} else { //No file exists
		show_debug_message("savedgame.sav does not exist");
		//scrSave();
		//room_goto(rm_settings);
	}
}
show_debug_message("End scrLoad function")