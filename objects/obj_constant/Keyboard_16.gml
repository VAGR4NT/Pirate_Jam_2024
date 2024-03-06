/// @desc handle screen size changes
if keyboard_check_pressed(ord("P")){
	window_set_fullscreen(!global.fullscreen);
	global.fullscreen = window_get_fullscreen();
}

if keyboard_check_pressed(ord("1")){
	global.test_num--;
}

if keyboard_check_pressed(ord("2")){
	global.test_num++;
}

if keyboard_check_pressed(vk_f5){
	game_restart();
}

if room == rm_game{
	if keyboard_check_pressed(ord("U")){
		global.painting_enabled = !global.painting_enabled;
		var _message = instance_create_layer(obj_player.x,obj_player.y,"UI",obj_message);
		var _status = "enabled";
		if global.painting_enabled == false _status = "disabled";
		_message.text = "Drag to sell " + string(_status);
		_message.color = c_white;
		_message.disappear_rate = .005;
		_message.rise_amount = 0;
		_message.on_gui_layer = true;
		_message.size = 40;
		_message.gui_x = global.true_width/2;
		_message.gui_y = global.true_height/3;
	}
}

if global.fullscreen == false{
	if keyboard_check_pressed(ord("I")){
		var _width = global.window_width - og_width;
		var _height = global.window_height - og_height;

		if _width > 0 and _height > 0
		{
			window_set_size(_width, _height);
			//Print("Decreased window size to: " + string(_width) + " x " + string(_height));
		}
	}

	if keyboard_check_pressed(ord("O")){
		var _width = global.window_width + og_width;
		var _height = global.window_height + og_height;

		if _width > 0 and _height > 0
		{
			window_set_size(_width, _height);
			//Print("Increased window size to: " + string(_width) + " x " + string(_height));
		}
	}
	
}