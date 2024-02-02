/// @description Plant Behaviour on a Frame by Frame Basis

#region Plant will change to Withered when Low Health and and Die when 0 Health
var _low_health = withering_threshold*max_plant_health;
if (plant_health <= 0){status = PLANT_STATE.DEAD;}
else if (plant_health < _low_health){status = PLANT_STATE.WITHERED;}
else {status = PLANT_STATE.HEALTHY;}
#endregion

#region Plants will change Image with Different Life Stages

//if (status == PLANT_STATE.WITHERED and image_number >= 4) 
//{
//	if (age == PLANT_AGE.SAPLING) 
//	{
//		image_index = 2;
//	}
//	else {image_index = 4;}
//}
//else if (status == PLANT_STATE.DEAD and image_number >= 4) 
//{
//	image_index = image_number - 1;
//	if (day_deceased == -1)
//	{
//		day_deceased = obj_park.park_stats.curr_day; 
//		obj_park.park_stats.daily_died++;
//	}
//}
//else if (age == PLANT_AGE.SEED and image_number >= 3 and status == PLANT_STATE.HEALTHY) {image_index = 0;}
//else if (age == PLANT_AGE.SAPLING and image_number >= 2 and status == PLANT_STATE.HEALTHY) {image_index = 1;}
//else if (age == PLANT_AGE.MATURE and image_number >= 2 and status == PLANT_STATE.HEALTHY) and maturity_recorded == false
//{
//	image_index = 3;
//	obj_park.park_stats.daily_matured++;
//	maturity_recorded = true;
//}
//else {image_index = 0;}

#endregion

#region Spencer Plant Sprites

switch(status)
{
	case PLANT_STATE.DEAD:
		image_index = image_number -1;
		
		if day_deceased == -1
		{
			day_deceased = obj_park.park_stats.curr_day; 
			obj_park.park_stats.daily_died++;
		}
	break;
	case PLANT_STATE.HEALTHY:
		switch(age)
		{
			case PLANT_AGE.SEED:
				image_index = 0;
			break;
			
			case PLANT_AGE.SAPLING:
				image_index = 1;
			break;
			
			case PLANT_AGE.MATURE:
				image_index = 3;
			break;
		}
	break;
	case PLANT_STATE.WITHERED:
		switch(age)
		{
			case PLANT_AGE.SEED:
				image_index = 0;
			break;
			
			case PLANT_AGE.SAPLING:
				image_index = 2;
			break;
			
			case PLANT_AGE.MATURE:
				image_index = 4;
			break;
		}
	break;


}

#endregion Spencer Plant Sprites

#region Handle Stats
if status == PLANT_STATE.DEAD
{
	day_deceased = obj_park.park_stats.curr_day; 
	obj_park.park_stats.daily_died++;
}
	
if age == PLANT_AGE.MATURE and !maturity_recorded
{
	obj_park.park_stats.daily_matured++;
	maturity_recorded = true;
}

#endregion Handle Stats

#region Plants will Fade in Opacity when Player is Behind them and within 100 Pixels of Them

var _y_diff = abs(obj_player.y - y) + 0.01; // Distance from Player on Y Axis
var _x_diff = abs(obj_player.x - x) + 0.01; // Distance from Player on X Axis
var _x_buff = 50; // Number of Pixels To Player for Fade to Proc


if (_y_diff < _x_buff and _x_diff < _x_buff )
{
	image_alpha = (0.75 - 2/_y_diff - 3/_x_diff);
}
else {image_alpha = 1;}

image_alpha = clamp(image_alpha, .2,1);
#endregion


//switch(object_index)
//{
//	case obj_flower:
switch(age)
{
	case PLANT_AGE.SEED:
			if days_survived <= germ_day
			{
				days_until_next_phase = (germ_day - days_survived) +1;
			}
	break;
	
	case PLANT_AGE.SAPLING:
			if days_survived <= maturation_day
			{
				days_until_next_phase = (maturation_day - days_survived) +1;
			}
	break;
	
	case PLANT_AGE.MATURE:
			if days_survived <= age_threshold
			{
				days_until_next_phase = (age_threshold - days_survived) +1;
			}
	break;
}
	
//	break;
//}


