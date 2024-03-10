/// @desc update park variables once per second

//update happiness rate
happiness_rate = .01 + ((num_flowers * 10) + (num_bushes * 5) + (num_trees * 2))/100;
EOD_bonus = 1 + round(num_bushes/2) + round(green_space/5) + round(park_stats.daily_npc/2);
total_plants = num_flowers + num_bushes + num_trees;
alarm[2] = 60;