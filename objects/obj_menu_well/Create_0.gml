/// @desc
event_inherited();
state = VISUAL_STATE.INACTIVE;
main_text = "What time is it? I was sound asleep \n until you walked over...";
time_diff = 0; //calculate in step event. number of in game hours left until force-sleep
sub_text = "What can I help you with?";
cost = 5;
cost_progression = [0,5,25,60,150,400,1000,3000,10000];

option_drink = instance_create_layer(x,y, "UI", obj_menu_option);
option_drink.parent_menu = self;
option_drink.x = 464;
option_drink.y = 496;
//option_drink.sprite_index = spr_menu_drink;
option_drink.option = 0;

option_toss_coins = instance_create_layer(x,y, "UI", obj_menu_option);
option_toss_coins.parent_menu = self;
option_toss_coins.x= 704;
option_toss_coins.y = 496;
//option_toss_coins.sprite_index = spr_menu_toss_coins;
option_toss_coins.option = 1;

choice = -1;