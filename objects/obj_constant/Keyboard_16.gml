/// @desc handle screen size changes
if global.fullscreen == false{
	if keyboard_check_pressed(ord(1)){
		var _width = global.window_width - og_width;
		var _height = global.window_height - og_height;

		if _width > 0 and _height > 0
		{
			window_set_size(_width, _height);
			Print("Decreased window size to: " + string(_width) + " x " + string(_height));
		}
	}

	if keyboard_check_pressed(ord(2)){
		var _width = global.window_width + og_width;
		var _height = global.window_height + og_height;

		if _width > 0 and _height > 0
		{
			window_set_size(_width, _height);
			Print("Increased window size to: " + string(_width) + " x " + string(_height));
		}
	}
}