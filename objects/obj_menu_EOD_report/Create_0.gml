/// @desc
event_inherited();
state = VISUAL_STATE.INACTIVE;
main_text = "You've made it to the end of day " + string(obj_park.park_stats.curr_day);
time_diff = 0; //calculate in step event. number of in game hours left until force-sleep
sub_text_1 = "Here is what happened";



option_yes = instance_create_layer(x,y, "UI", obj_menu_boolean);
option_yes.parent_menu = self;
option_yes.option = 1;
option_yes.x = 589;
option_yes.y = 511;
choice = -1;