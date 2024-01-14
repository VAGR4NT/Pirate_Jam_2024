/// @description Tracks Park Stats + Spawns things
//Tracks park states like day/night, number of NPC's visiting, tracks green space number, and spawns NPCs

// Plant Trackers
total_plants = 0;
num_flowers = 0; // Increase happiness disprotportionaly
num_bushes = 0; // Increases revenue for the day
num_trees = 0; // Increase Green Space more

// NPC Effect Trackers
num_total_plots = 0; // Number of plots occupied
green_space = 0; // Variable the brings more npc's into the park
happiness_rate = 0; //Tracks rate of happiness change in NPCs

// Daily Stat Trackers
daily_npc = 0; //Number of NPCs 
daily_planted = 0; //Number of things planted
daily_matured = 0; //Number of plants that growed to maturity today
daily_sold = 0; //Number of plants sold
daily_lost = 0; //Number of plants lost to enemies

//Make Array of yesterdays data to compare

