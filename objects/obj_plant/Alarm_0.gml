/// @desc calculate value

var _status_value = 0;
switch(status)
{
	case PLANT_STATE.DEAD:
		_status_value = 0;
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
		_age_value = 0
	break;
	
	case PLANT_AGE.SAPLING:
		_age_value = 1
	break;
	
	case PLANT_AGE.MATURE:
		_age_value = 6
	break;
}


sell_value = _status_value + _age_value + type_value;
alarm[0] = 20;