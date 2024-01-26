/// @desc open park add NPCs
//Print("updated num npcs");
obj_park.num_npcs = 1 + (obj_park.num_trees + round(park_stats.curr_day/3));

//Print("park.closed = false");
obj_park.closed = false;
obj_well.used_today = false;


alarm[0] = -1;