/// @desc
event_inherited();
state = VISUAL_STATE.INACTIVE;
main_text = "Welcome to the shop!";
//time_diff = 0; //calculate in step event. number of in game hours left until force-sleep
//hours_left_warning = "You still have " + string(time_diff) + " hours left until the end of the day";

num_flower_seeds = 0;
flower_price = 1;

num_bush_seeds = 0;
bush_price = 2;

num_tree_saplings = 0;
tree_price = 3;

total_cost = (num_flower_seeds * flower_price) + (num_bush_seeds * bush_price) + (num_tree_saplings * tree_price);
can_buy = true;
//text_color = c_white;
flower_input_button = instance_create_layer(x,y, "UI", obj_menu_input);
flower_input_button.parent_menu = self;
flower_input_button.item_option = "flower";

bush_input_button = instance_create_layer(x,y, "UI", obj_menu_input);
bush_input_button.parent_menu = self;
bush_input_button.item_option = "bush";

tree_input_button = instance_create_layer(x,y, "UI", obj_menu_input);
tree_input_button.parent_menu = self;
tree_input_button.item_option = "tree";

option_yes = instance_create_layer(x,y, "UI", obj_menu_boolean);
option_yes.parent_menu = self;
option_yes.option = 1;

option_no = instance_create_layer(x,y, "UI", obj_menu_boolean);
option_no.parent_menu = self;
option_no.option = 0;

choice = -1;