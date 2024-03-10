/// @description Create Event For Bushes

// Inherit the parent event
event_inherited();
type_value = 2;
max_plant_health = 20;
plant_health = max_plant_health;

germ_day = 1;
//germ_day = 4;
//maturation_day = 6;
maturation_day = 2;
age_threshold = 20;

withering_threshold = 0.4;
heal_rate = 4;
wither_rate = 6/2;
dhyd_rate = 0.3;
type = PLANT_TYPE.BUSH;
obj_park.num_bushes ++;
//size_variation = choose(1, 1.25, 1.5, 1.75); //add to value
size_variation = 1; //add to value
size_bonus = round(size_variation);
image_xscale = size_variation;
image_yscale = size_variation;