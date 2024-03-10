/// @desc
event_inherited();
state = VISUAL_STATE.INACTIVE;
main_text = "Do you want to sleep and end the current day?";
time_diff = obj_park.sleep_time - obj_park.time; //calculate in step event. number of in game hours left until force-sleep
hours_left_warning = "You still have " + string(time_diff) + " hours left until the end of the day";

option_yes = instance_create_layer(x,y, "UI", obj_menu_boolean);
option_yes.parent_menu = self;
option_yes.x = 464;
option_yes.y = 496;
option_yes.sprite_index = spr_menu_yes;
option_yes.option = 1;

option_no = instance_create_layer(x,y, "UI", obj_menu_boolean);
option_no.parent_menu = self;
option_no.x= 704;
option_no.y = 496;
option_no.sprite_index = spr_menu_no;
option_no.option = 0;

choice = -1;