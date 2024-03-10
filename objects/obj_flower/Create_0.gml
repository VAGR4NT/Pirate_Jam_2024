/// @description Create Event For Flower

// Inherit the parent event
event_inherited();
type_value = 1;
max_plant_health = 10;
plant_health = max_plant_health;

germ_day = 2;
maturation_day = 4;

age_threshold = 10;

withering_threshold = 0.6;
heal_rate = 2;
wither_rate = 3/2;
dhyd_rate = 0.4;
type = PLANT_TYPE.FLOWER;

obj_park.num_flowers ++;

size_variation = 1; //add to value
size_bonus = round(size_variation);
image_xscale = size_variation;
image_yscale = size_variation;