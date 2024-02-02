/// @desc lower obj_park plant tracking stats when sold

if object_get_name(object_index) == obj_flower obj_park.num_flowers--;
if object_get_name(object_index) == obj_bush obj_park.num_bushes--;
if object_get_name(object_index) == obj_tree obj_park.num_trees--;

obj_park.green_space--;