/// @description Contains growing plant
// If occupied by bush or tree, no longer passable.

event_inherited();

occupied_by = "";
occupied = false;
plant_object = -1;
has_sprite = false;
next_to_sprite = false;
plot_size = sprite_width;