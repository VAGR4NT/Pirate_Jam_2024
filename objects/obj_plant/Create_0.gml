/// @description Decsribe shared Plant Behaviour

plant_health = 10.0; // Health points of the plant
watered_perc = 0.0; // Watered Percentage
day_planted = 0; // Tracks the day planted
days_survived = 0; // Tracks the number of days
day_deceased = -1; // Tracks day plant dies

max_plant_health = 10; // Maximum Health points of the plant
withering_threshold = 0.2; // The percentage of water level at which plants become withered
age_threshold = 10; //Number of days for plant to complete its life cycle and die

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




