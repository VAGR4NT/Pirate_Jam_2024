switch(state)
{
	case PLAYER_STATES.WATERING:
	if instance_exists(obj_water_up)
	{
		obj_water_up.activated = true;
	}
		state = PLAYER_STATES.WALKING;
	break;

	case PLAYER_STATES.DIGGING:
		state = PLAYER_STATES.WALKING;
	break;
	
	case PLAYER_STATES.INTERACTING:
		state = PLAYER_STATES.WALKING;
	break;
}