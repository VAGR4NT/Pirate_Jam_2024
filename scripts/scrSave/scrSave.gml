function scrSave(){

	///Holds all Save files
	var _root_list = ds_list_create();

	///each of these maps contain the data for a game 
	var _map = ds_map_create();
	ds_list_add(_root_list,_map);
	ds_list_mark_as_map(_root_list,ds_list_size(_root_list)-1);

#region Variables
	//write in game values to savegame.sav
	ds_map_add(_map, "curr_day", obj_park.park_stats.curr_day);
	ds_map_add(_map, "flower_seeds", obj_park.flower_seeds);
	ds_map_add(_map, "bush_seeds", obj_park.bush_seeds);
	ds_map_add(_map, "tree_saplings", obj_park.tree_saplings);
	ds_map_add(_map, "total_happiness", obj_park.total_happiness);
	ds_map_add(_map, "cash", obj_constant.cash);
	ds_map_add(_map, "water_level", obj_player.water_level);
	ds_map_add(_map, "water_held", obj_player.water_held);
	ds_map_add(_map, "obj_well.upgrade_level", obj_well.upgrade_level);
	ds_map_add(_map, "obj_well.uses_left", obj_well.uses_left);
	ds_map_add(_map, "money_goal_level", global.money_goal_level);
	ds_map_add(_map, "planting_goal_level", global.planting_goal_level);
	ds_map_add(_map, "visitor_goal_level", global.visitor_goal_level);
	ds_map_add(_map, "day_goal_level", global.day_goal_level);
	ds_map_add(_map, "happy_goal_level", global.happy_goal_level);
	
	//ds_map_add(_map, "selection", sPlayerShip);

#endregion	Variables

#region Recreate objects
			
	var _plants_string = "";
	for (var i = 0; i < instance_number(obj_plant); i++)
	{
		var _plant = instance_find(obj_plant,i);
		_plants_string += "-" + 
		string(object_get_name(_plant.object_index)) 
		+ "," + string(_plant.age)
		+ "," + string(_plant.x) 
		+ "," + string(_plant.y) 
		+ "," + string(_plant.status) 
		+ "," + string(_plant.watered_perc) 
		+ "," + string(_plant.plant_health) 
		+ "," + string(_plant.size_variation)
		+ "," + string(_plant.days_survived)
		+ "," + string(_plant.death_recorded)
		+ "," + string(_plant.maturity_recorded);
		//+ "," + string(_plant.blend);
	}
	ds_map_add(_map, "plants_list", _plants_string);
				
#endregion Recreate objects


#region Do this for each save file
	///Wrap root list in a map
	var _wrapper = ds_map_create();
	ds_map_add_list(_wrapper, "ROOT", _root_list); ///"ROOT" ////global.file_choice

	///Save all to string
	var _string = json_encode(_wrapper);
	scrSaveStringToFile("savedgame.sav", _string);

	///Destroy Everything when done
	ds_map_destroy(_wrapper);
#endregion

	show_debug_message("scrSave")
	//}

}
