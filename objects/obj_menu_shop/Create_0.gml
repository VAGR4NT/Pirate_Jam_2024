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

#region Flower input buttons
flower_text_y_buff = 30;
flower_text_y_start = 180;
flower_text_y = flower_text_y_start - flower_text_y_buff;
flower_amount_text_y = flower_text_y_start;
flower_cost_text_y = flower_text_y_start + flower_text_y_buff;
flower_text_x = 678;

flower_minus_1_button = instance_create_layer(x,y, "UI", obj_menu_store_button);
flower_minus_1_button.parent_menu = self;
flower_minus_1_button.type = "flower";
flower_minus_1_button.amount = -1;
flower_minus_1_button.x = 624;
flower_minus_1_button.y = flower_text_y_start;

flower_minus_10_button = instance_create_layer(x,y, "UI", obj_menu_store_button);
flower_minus_10_button.parent_menu = self;
flower_minus_10_button.type = "flower";
flower_minus_10_button.amount = -10;
flower_minus_10_button.x = 576;
flower_minus_10_button.y = flower_text_y_start;

flower_plus_1_button = instance_create_layer(x,y, "UI", obj_menu_store_button);
flower_plus_1_button.parent_menu = self;
flower_plus_1_button.type = "flower";
flower_plus_1_button.amount = 1;
flower_plus_1_button.x = 736;
flower_plus_1_button.y = flower_text_y_start;

flower_plus_10_button = instance_create_layer(x,y, "UI", obj_menu_store_button);
flower_plus_10_button.parent_menu = self;
flower_plus_10_button.type = "flower";
flower_plus_10_button.amount = 10;
flower_plus_10_button.x = 784;
flower_plus_10_button.y = flower_text_y_start;

#endregion Flower input buttons

#region bush input buttons
bush_text_y_buff = 30;
bush_text_y_start = 180 + 140;
bush_text_y = bush_text_y_start - bush_text_y_buff;
bush_amount_text_y = bush_text_y_start;
bush_cost_text_y = bush_text_y_start + bush_text_y_buff;
bush_text_x = 678;

bush_minus_1_button = instance_create_layer(x,y, "UI", obj_menu_store_button);
bush_minus_1_button.parent_menu = self;
bush_minus_1_button.type = "bush";
bush_minus_1_button.amount = -1;
bush_minus_1_button.x = 624;
bush_minus_1_button.y = bush_text_y_start;

bush_minus_10_button = instance_create_layer(x,y, "UI", obj_menu_store_button);
bush_minus_10_button.parent_menu = self;
bush_minus_10_button.type = "bush";
bush_minus_10_button.amount = -10;
bush_minus_10_button.x = 576;
bush_minus_10_button.y = bush_text_y_start;

bush_plus_1_button = instance_create_layer(x,y, "UI", obj_menu_store_button);
bush_plus_1_button.parent_menu = self;
bush_plus_1_button.type = "bush";
bush_plus_1_button.amount = 1;
bush_plus_1_button.x = 736;
bush_plus_1_button.y = bush_text_y_start;

bush_plus_10_button = instance_create_layer(x,y, "UI", obj_menu_store_button);
bush_plus_10_button.parent_menu = self;
bush_plus_10_button.type = "bush";
bush_plus_10_button.amount = 10;
bush_plus_10_button.x = 784;
bush_plus_10_button.y = bush_text_y_start;

#endregion bush input buttons


#region tree input buttons
tree_text_y_buff = 30;
tree_text_y_start = 180 + (140 * 2);
tree_text_y = tree_text_y_start - tree_text_y_buff;
tree_amount_text_y = tree_text_y_start;
tree_cost_text_y = tree_text_y_start + tree_text_y_buff;
tree_text_x = 678;

tree_minus_1_button = instance_create_layer(x,y, "UI", obj_menu_store_button);
tree_minus_1_button.parent_menu = self;
tree_minus_1_button.type = "tree";
tree_minus_1_button.amount = -1;
tree_minus_1_button.x = 624;
tree_minus_1_button.y = tree_text_y_start;

tree_minus_10_button = instance_create_layer(x,y, "UI", obj_menu_store_button);
tree_minus_10_button.parent_menu = self;
tree_minus_10_button.type = "tree";
tree_minus_10_button.amount = -10;
tree_minus_10_button.x = 576;
tree_minus_10_button.y = tree_text_y_start;

tree_plus_1_button = instance_create_layer(x,y, "UI", obj_menu_store_button);
tree_plus_1_button.parent_menu = self;
tree_plus_1_button.type = "tree";
tree_plus_1_button.amount = 1;
tree_plus_1_button.x = 736;
tree_plus_1_button.y = tree_text_y_start;

tree_plus_10_button = instance_create_layer(x,y, "UI", obj_menu_store_button);
tree_plus_10_button.parent_menu = self;
tree_plus_10_button.type = "tree";
tree_plus_10_button.amount = 10;
tree_plus_10_button.x = 784;
tree_plus_10_button.y = tree_text_y_start;

#endregion tree input buttons

#region Yes + No buttons
option_yes = instance_create_layer(x,y, "UI", obj_menu_boolean);
option_yes.parent_menu = self;
option_yes.x = 470;
option_yes.y = 607;
option_yes.sprite_index = spr_menu_yes;
option_yes.option = 1;

option_no = instance_create_layer(x,y, "UI", obj_menu_boolean);
option_no.parent_menu = self;
option_no.x= 714;
option_no.y = 607;
option_no.sprite_index = spr_menu_no;
option_no.option = 0;
#endregion Yes + No buttons

choice = -1;