/// @description Create Event For Tree

// Inherit the parent event
event_inherited();
type_value = 3;
max_plant_health = 50;
plant_health = max_plant_health;

germ_day = 0;
maturation_day = 10;
age_threshold = 30;

withering_threshold = 0.4;
heal_rate = 5;
wither_rate = 10/2;
dhyd_rate = 0.1;

age = PLANT_AGE.SAPLING; // Trees begin at sapling stage
image_index = 1;
type = PLANT_TYPE.TREE;
obj_park.num_trees ++;

size_variation = choose(1, 1.5, 2.25); //add to value
size_bonus = round(size_variation);

