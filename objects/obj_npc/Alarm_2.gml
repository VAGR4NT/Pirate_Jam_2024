/// @desc Add Happiness

if happiness < 100
{
	happiness += obj_park.happiness_rate;
	obj_park.park_stats.daily_happiness += obj_park.happiness_rate;
}


alarm[2] = 120;