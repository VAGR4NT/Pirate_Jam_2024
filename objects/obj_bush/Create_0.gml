/// @description Create Event For Bushes

// Inherit the parent event
event_inherited();
type_value = 3;
max_plant_health = 20;
plant_health = max_plant_health;

germ_day = 4;
maturation_day = 8;
age_threshold = 20;

withering_threshold = 0.4;
heal_rate = 4;
wither_rate = 6;
dhyd_rate = 0.3;

obj_park.num_bushes ++;
var _size_variation = random_range(1.25, 1.75);
image_xscale = _size_variation;
image_yscale = _size_variation;