/// @description Tracks Park Stats + Spawns things
//Tracks park states like day/night, number of NPC's visiting, tracks green space number, and spawns NPCs

//Number of Plots
park_plots = layer_get_all_elements("Plots");
num_plots = array_length(park_plots);

// Plant Trackers
total_plants = 0;
num_flowers = 0; // Increase happiness disprotportionaly
num_bushes = 0; // Increases revenue for the day
num_trees = 0; // Increase Green Space more

// Inventory Trackers
flower_seeds = 1;
bush_seeds = 2;
tree_saplings = 3;

// NPC Effect Trackers
green_space = 0; // Variable the brings more npc's into the park
happiness_rate = 0; //Tracks rate of happiness change in NPCs
closed = false;


// Daily Stat Trackers
park_stats = 
{
	curr_day : 0, //Number of days the park has existed
	daily_npc : 0, //Number of NPCs 
	daily_planted : 0, //Number of things planted
	daily_matured : 0,//Number of plants that growed to maturity today
	daily_sold : 0, //Number of plants sold
	daily_died : 0 //Number of plants that died
};

//Make Array of previous days data to compare
all_days = array_create(99);
