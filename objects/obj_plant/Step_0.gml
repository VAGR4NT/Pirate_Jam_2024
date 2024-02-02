/// @description Plant Behaviour on a Frame by Frame Basis

if mouse_on
{
	if obj_mouse.mode == MOUSE_MODES.INSPECTING
	{
		inspect = true;
	} else {
		inspect = false;
	}
} else {
	inspect = false;
}


#region Plant will change to Withered when Low Health and and Die when 0 Health
var _low_health = withering_threshold*max_plant_health;
if (plant_health <= 0){status = PLANT_STATE.DEAD;}
else if (plant_health < _low_health){status = PLANT_STATE.WITHERED;}
else {status = PLANT_STATE.HEALTHY;}
#endregion


#region Spencer Plant Sprites

switch(status)
{
	case PLANT_STATE.DEAD:
		image_index = image_number -1;
		
		if day_deceased == -1 and death_recorded == false
		{
			day_deceased = obj_park.park_stats.curr_day; 
			obj_park.park_stats.daily_died++;
			death_recorded = true;
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
	//obj_park.park_stats.daily_died++;
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


