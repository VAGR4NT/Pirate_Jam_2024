/// @desc open park add NPCs

var _message = instance_create_layer(obj_player.x,obj_player.y,"UI",obj_message);
_message.text = "Visitors are arriving";
_message.color = c_white;
_message.disappear_rate = .005;
_message.rise_amount = 0;
_message.on_gui_layer = true;
_message.size = 40;
_message.gui_x = global.true_width/2;
_message.gui_y = global.true_height/3;

obj_park.num_npcs = 1 + (obj_park.num_trees + round(green_space*2/num_plots) + round(park_stats.curr_day/5));
obj_park.closed = false;

park_stats.daily_npc = 0; //Number of NPCs 
park_stats.daily_planted = 0; //Number of things planted
park_stats.daily_matured = 0;//Number of plants that growed to maturity today
park_stats.daily_sold = 0; //Number of plants sold
park_stats.daily_died = 0; //Number of plants that died
park_stats.daily_happiness = 0; //Amount of happiness spread

alarm[0] = -1;