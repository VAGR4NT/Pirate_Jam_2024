/// @desc Progresses the day count and updates all the states that progress with the day/night cycle
function ProgressDay(){
	//End night music and start day music
	audio_stop_sound(global.night_song);
	//slowly begin playing the new song	
	audio_resume_sound(global.current_song);
	audio_sound_gain(global.current_song, 1, 3 * 1000);
	
	//ShuffleSong();
	
	//if global.build_target != BUILD_TARGET.HTML{
		scrSave();
	//}
	//Print("progressing day");
	// Update Plant Information For All Plotted Plants
	
	//Since player is in the room
	layer_set_visible("InRoomEffect1", true);
	layer_set_visible("InRoomEffect2", true);
	
	planted = layer_get_all_elements("Plants");
	num_planted = array_length(planted);
	for (var _i = 0; _i < num_planted; _i++)
	{
		with ( layer_instance_get_instance(planted[_i]) )
		{
			#region Progresses Plant Age
			if(age == PLANT_AGE.SAPLING && days_survived >= maturation_day && status == PLANT_STATE.HEALTHY )
			{
				age = PLANT_AGE.MATURE;
			}
			
			if(age == PLANT_AGE.SEED && days_survived >= germ_day && status == PLANT_STATE.HEALTHY )
			{
				age = PLANT_AGE.SAPLING;
			}
			#endregion
			
			#region Updates EOD Plant Status Effects
			if (status == PLANT_STATE.DEAD)
			{
				watered_perc = 0;
			}
			else 
			{
				watered_perc -= dhyd_rate;
				watered_perc = clamp(watered_perc, 0, 100);
			}
			
			//if (status == PLANT_STATE.WITHERED)
			//{
				if (watered_perc < withering_threshold)
				{
					plant_health -= wither_rate;
				}
				else
				{
					if plant_health < max_plant_health
					{
						plant_health += heal_rate;
					}
				}
			//}
			
			
			if (days_survived > age_threshold or plant_health <= 0)
			{
				plant_health = 0;
				status = PLANT_STATE.DEAD;
				if ( day_deceased == -1)
				{
					day_deceased = obj_park.park_stats.curr_day; 
				}
			}
			else if (watered_perc < withering_threshold or plant_health < (withering_threshold*max_plant_health))
			{
				status = PLANT_STATE.WITHERED;
				days_survived++;
			}
			else 
			{
				status = PLANT_STATE.HEALTHY;
				days_survived++;
			}
			
			#endregion
		}
	}
	// Update Park Stats 
	with (obj_park)
	{
		time = 1;
		time_number = 6;
		all_days[park_stats.curr_day] = park_stats;
		park_stats.curr_day++;
		#region Happy Hour
		if IsOdd(park_stats.curr_day){
			var _chance = irandom(99);
			if _chance <= 60
			{
				happy_hour_day = true;
				happy_hour = irandom_range(13, max_time-4);
			} else {
				happy_hour_day = false;
			}
	
		}
		#endregion Happy Hour
		total_happiness += park_stats.daily_happiness; 
		park_stats.daily_happiness = 0;
		
		#region Set night time filter before player goes to their house
		if time < dark_threshold
		{
			night_alpha = 1;
		} else {
			night_alpha = 1 - ((time/max_time)*.85);
		}
		night_alpha = clamp(night_alpha, 0, 1);
		final_color = color_to_array(merge_color(c_blue,c_white,night_alpha));
		fx_set_parameter(_fx_tint, "g_TintCol", final_color);
		#endregion Set night time filter before player goes to their house
		
		//alarm[0] = 1; //calculate number of NPCs to spawn //look here
	}
}