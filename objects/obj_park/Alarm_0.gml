/// @desc calculate number of NPCs to spawn
obj_park.num_npcs = 1 + (obj_park.num_trees + round(park_stats.curr_day/3));

obj_park.closed = false;

alarm[0] = -1;