/// @desc Calculate Plant Value

var _status_value = 0;
switch(status)
{
	case PLANT_STATE.DEAD:
		_status_value = 1;
	break;
	
	case PLANT_STATE.WITHERED:
		_status_value = 1;
	break;
	
	case PLANT_STATE.HEALTHY:
		_status_value = 2;
	break;
}

var _age_value = 0;
switch(age)
{
	case PLANT_AGE.SEED:
		_age_value = 1;
	break;
	
	case PLANT_AGE.SAPLING:
		_age_value = 3;
	break;
	
	case PLANT_AGE.MATURE:
		_age_value = 6;
	break;
}

///Not likely to have a dead seed so this works for now
if age == PLANT_AGE.SEED
{
	sell_value = _age_value; //1
}
else if status == PLANT_STATE.DEAD
{
	sell_value = _status_value; //1
}
else if object_index == obj_tree and age == PLANT_AGE.SAPLING
{
	sell_value = 2;
} else {
	sell_value = _status_value + _age_value + type_value// + size_bonus;
}


alarm[0] = 20;