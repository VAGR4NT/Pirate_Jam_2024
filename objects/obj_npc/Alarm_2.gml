/// @desc Add Happiness

if happiness + obj_park.happiness_rate <= 100
{
	happiness += obj_park.happiness_rate;
	obj_park.park_stats.daily_happiness += obj_park.happiness_rate;
} else {
	var _overhang = happiness + obj_park.happiness_rate - 100;
	happiness = 100;
	obj_park.park_stats.daily_happiness += obj_park.happiness_rate - _overhang;
}


alarm[2] = 120;