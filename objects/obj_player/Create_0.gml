/// @description Upon Character Spawn

//movement
move_spd = 5;
x_speed = 0;
y_speed = 0;
can_move = true;

//Water
water_level = 0;
water_level_bonus = 25;
water_max = 100 + (0 * water_level_bonus);
water_held = 0;

state = PLAYER_STATES.WALKING;