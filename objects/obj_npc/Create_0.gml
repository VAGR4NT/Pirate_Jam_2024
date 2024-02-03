obj_park.park_stats.daily_npc++;
move_spd = 1;
min_move_speed = move_spd;
target = noone; //which node to move to
last_target = noone;
//moving = false; //
look_time = choose(12,15,18) * 60; //how long the npc will stop and look at the node
happiness = irandom(100);
happiness_gained = 0;
leaving_park = false;
color = 0;
previous_x = 0;
previous_y = 0;
sprite_index = choose(spr_npc_birb_blue, spr_npc_birb_red, spr_npc_birb_white)
alarm[0] = 1;
alarm[1] = -1;
alarm[2] = 120;
alarm[3] = 20;