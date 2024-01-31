/// @desc open park add NPCs
//Print("updated num npcs");

var _message = instance_create_layer(obj_player.x,obj_player.y,"UI",obj_message);
_message.text = "Visitors are arriving";
_message.color = c_white;
_message.disappear_rate = .01;
_message.rise_amount = -.1;

obj_park.num_npcs = 1 + (obj_park.num_trees + round(park_stats.curr_day/3));

//Print("park.closed = false");
obj_park.closed = false;
obj_well.used_today = false;

park_stats.daily_npc = 0; //Number of NPCs 
park_stats.daily_planted = 0; //Number of things planted
park_stats.daily_matured = 0;//Number of plants that growed to maturity today
park_stats.daily_sold = 0; //Number of plants sold
park_stats.daily_died = 0; //Number of plants that died
park_stats.daily_happiness = 0; //Amount of happiness spread
//}

alarm[0] = -1;