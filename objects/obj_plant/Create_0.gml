/// @description Decsribe shared Plant Behaviour
alarm[0] = 20; //Calculate value
sell_value = 1;
type_value = 1;
death_recorded = false;
maturity_recorded = false;
inspect = false;
mouse_on = false;
//blend = choose(0, 1, 2);
//blend_list = [c_red, c_blue, c_black];

max_plant_health = 10; // Maximum Health points of the plant
plant_health = max_plant_health; // Health points of the plant

watered_perc = 1.0; // Watered Percentage
day_planted = obj_park.park_stats.curr_day; // Tracks the day planted
days_survived = 0; // Tracks the number of days
day_deceased = -1; // Tracks day plant dies

germ_day = 2;  // Day When seed turns to sapling (if not withered)
maturation_day = 6; // Day whe sapling turns to adult (if not withered)
age_threshold = 10; //Number of days for plant to complete its life cycle and die

withering_threshold = 0.2; // The percentage of water level at which plants become withered
heal_rate = 2; //Rate at which a plant heals from withering condition if watered enough
wither_rate = 2; //Rate at which the plants health decreases when dehydrated
dhyd_rate = 0.1; // Rate at which this plant naturally loses water per day
days_until_next_phase = 0;

// Plant states only apply to saplings and matured plants
// PLANT_STATE is a measure of plant's health 
plant_age_text = ["SEED", "SAPLING", "MATURE"];
plant_status_text = ["HEALTHY", "WITHERED", "DEAD"];
plant_type_text = ["FLOWER", "BUSH", "TREE"];

enum PLANT_STATE  
{
	HEALTHY, // All is well. Will Progress Naturally
	WITHERED, // Has not been watered or has low health
	DEAD // Plant is no longer living, needs to be dug up.
}

enum PLANT_AGE // Naturally Progresses Along These as Days Pass and Is Healthy
{
	SEED,
	SAPLING,
	MATURE
}

enum PLANT_TYPE // Naturally Progresses Along These as Days Pass and Is Healthy
{
	FLOWER,
	BUSH,
	TREE
}

status = PLANT_STATE.HEALTHY;
age = PLANT_AGE.SEED;
type = PLANT_TYPE.FLOWER;
size_variation =0; //add to value
size_bonus = round(size_variation);

obj_park.green_space++;

image_speed = 0; // Will not Flick Through Image Index
obj_park.park_stats.daily_planted++;