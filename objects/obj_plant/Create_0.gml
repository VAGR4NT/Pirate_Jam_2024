/// @description Decsribe shared Plant Behaviour

plant_health = 10.0; // Health points of the plant
watered_perc = 1.0; // Watered Percentage
day_planted = obj_park.park_stats.curr_day; // Tracks the day planted
days_survived = 0; // Tracks the number of days
day_deceased = -1; // Tracks day plant dies

germ_day = 2;  // Day When seed turns to sapling (if not withered)
maturation_day = 4; // Day whe sapling turns to adult (if not withered)

max_plant_health = 10; // Maximum Health points of the plant
withering_threshold = 0.2; // The percentage of water level at which plants become withered
age_threshold = 10; //Number of days for plant to complete its life cycle and die
heal_rate = 2; //Rate at which a plant heals from withering condition if watered enough
wither_rate = 2; //Rate at which the plants health decreases when dehydrated
dhyd_rate = 1; // Rate at which this plant naturally loses water per day

// Plant states only apply to saplings and matured plants
// PLANT_STATE is a measure of plant's health 
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

status = PLANT_STATE.HEALTHY;
age = PLANT_AGE.SEED;


