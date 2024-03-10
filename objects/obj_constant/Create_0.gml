/// @description Controls savefiles, games state, windowed/fullscreen, GUI
//global.mouse_gui_x = window_mouse_get_x();
//global.mouse_gui_y = window_mouse_get_y();
layer_set_visible("UI", true);

enum BUILD_TARGET
{
	WINDOWS,
	HTML
}
global.build_target = BUILD_TARGET.WINDOWS;

global.window_width = window_get_width();
global.window_height = window_get_height();
global.true_width = 0;
global.true_height = 0;
gui_multiplier = 2;
og_width = 640;
og_height = 360;
width_ratio = og_width/global.window_width;
height_ratio = og_height/global.window_height;
EOD_menu_shown = false;

global.fullscreen = false;
global.test_num = 0;
global.two_for_1 = false;
global.picture_mode = false;
effect_return_value = 0;

#macro MOUSE_GUI_X device_mouse_x_to_gui(0)
#macro MOUSE_GUI_Y device_mouse_y_to_gui(0)

enum VISUAL_STATE{
	ACTIVE,
	INACTIVE
}
enum PLAYER_STATES{
	WALKING,
	WATERING,
	DIGGING,
	INTERACTING
}
enum MOUSE_MODES{
	WATERING,
	PLANTING,
	DIGGING,
	INSPECTING,
	NOTHING
}


cash = 50;
menus_array = array_create(0); //used in pause menu logic
global.on_seed_button = false; //used to keep players from accidentally planting seeds as soon as they select them
global.painting_enabled = false;

global.money_goal = 100;
global.money_goal_level = 0;
global.money_goal_popup = false;
global.money_goal_checkpoints = [100, 200, 400, 600, 1000, 5000, 9999];
global.money_goals_complete = false;

global.planting_goal = 20;
global.planting_goal_level = 0;
global.planting_goal_popup = false;
global.planting_goal_checkpoints = [10, 30, 80, 200, 500, 750, 1200];
global.planting_goals_complete = false;

global.visitor_goal = 10;
global.visitor_goal_level = 0;
global.visitor_goal_popup = false;
global.visitor_goal_checkpoints = [5, 10, 20, 30, 60, 100, 500];
global.visitor_goals_complete = false;

global.day_goal = 5;
global.day_goal_level = 0;
global.day_goal_popup = false;
global.day_goal_checkpoints = [5, 10, 20, 30, 60, 100, 200, 500];
global.day_goals_complete = false;


global.happy_goal = 10;
global.happy_goal_level = 0;
global.happy_goal_popup = false;
global.happy_goal_checkpoints = [10, 50, 200, 500, 1000, 3000, 7000, 20000, 50000, 100000];
global.happy_goals_complete = false;

global.programming_credits_array= array_create(0);
global.programming_credits_array[0] = "SpencaSlim - https://closed-bracket-studios.itch.io/";
global.programming_credits_array[1] = "Vagrant - https://github.com/VAGR4NT";

global.music_credits_array= array_create(0);
global.music_credits_array[0] = "Shop Theme (Buy Something!) - Cleyton Kauffman - https://soundcloud.com/cleytonkauffman";
global.music_credits_array[1] = "Cutie Pie - FrancisLeeMusic - https://opengameart.org/content/cutie-pie License: CC-BY 3.0  Original Audio";
global.music_credits_array[2] = "Along The Way - congusbongus - https://opengameart.org/users/congusbongus License: CC-BY 4.0  Original Audio";

global.art_credits_array= array_create(0);
global.art_credits_array[0] = "Plush Pilla - https://plush-pilla.itch.io/";
global.art_credits_array[1] = "Kenney - https://www.kenney.nl/";

global.in_game_music = array_create(0);
global.in_game_music[0] = snd_shop_theme;
global.in_game_music[1] = snd_cutie_pie;
global.in_game_music[2] = snd_along_the_way;
global.in_game_music[3] = snd_train_station;

//global.in_game_music[0] = bookOpen;
//global.in_game_music[1] = watering2;
//global.in_game_music[2] = coin_flip;
//global.in_game_music[3] = closing_park;

global.current_song = global.in_game_music[irandom(array_length(global.in_game_music)-1)];
global.current_song_gain = 0;
global.night_song = snd_night1;
global.night_song_gain = 0;
global.looping_music = false;
global.shuffle = false;

alarm[0] = 1;