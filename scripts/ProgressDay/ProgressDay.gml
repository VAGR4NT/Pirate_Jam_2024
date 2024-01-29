/// @desc Progresses the day count and updates all the states that progress with the day/night cycle
function ProgressDay(){
	//Print("progressing day");
	// Update Plant Information For All Plotted Plants
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
				if (watered_perc <= 0) {watered_perc = 0;}
			}
			
			if (status == PLANT_STATE.WITHERED)
			{
				if (watered_perc < withering_threshold)
				{
					plant_health -= wither_rate;
				}
				else
				{
					plant_health += heal_rate;
				}
			}
			
			
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
		all_days[park_stats.curr_day] = park_stats;
		park_stats.curr_day++;
		total_happiness += park_stats.daily_happiness; 
		alarm[0] = 1; //calculate number of NPCs to spawn
		//reset park_stat variables
	}
}