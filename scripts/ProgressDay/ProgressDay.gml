// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ProgressDay(){
	
	// Update Plant Ages
	planted = layer_get_all_elements("Plants");
	num_planted = array_length(planted);
	for (var _i = 0; _i < num_planted; _i++)
	{
		with (planted[_i])
		{
			day_survived++;
		}
	}
	// Update Park Stats and NPC Behaviour For the Day (TO DO LATER)
	with (obj_park)
	{
		curr_day++;
	}
}