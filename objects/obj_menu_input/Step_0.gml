event_inherited();


amount = clamp(amount, 0, 99);

var _buff = 60;
var _ystart = 248
var _xstart = 416
var _index = 0;

if taking_input
{
	text_alpha = SineBetween(current_time / 1000, 2, .4, 1);
} else {
	text_alpha = 1;
}

image_index = mouse_hover;
switch(item_option)
{
	case "flower":
		units = "seeds";
		_index = 0;
		x = _xstart;
		y = _ystart + (_index * _buff);
		parent_menu.num_flowers = amount;
	break;

	case "bush":
		units = "seeds";
		_index = 1;
		x = _xstart;
		y = _ystart + (_index * _buff);
		parent_menu.num_bushes = amount;
	break;
	
	case "tree":
		units = "saplings";
		_index = 2;
		x = _xstart;
		y = _ystart + (_index * _buff);
		parent_menu.num_trees = amount;
	break;
}


if instance_exists(parent_menu)
{
	if mouse_check_button_pressed(mb_any){
		if mouse_hover
		{
			//active = true;
			taking_input = true;
			keyboard_string = "";
			//var _remove = string_letters(keyboard_string); 
		} else {
			//active = false;
			taking_input = false;
			keyboard_string = "";
		}
	}
	#region Clear entries when menu closed
	if parent_menu.state == VISUAL_STATE.INACTIVE
	{
		amount = 0;
		keyboard_string = "";
		state = parent_menu.state;
	}
	#endregion Clear entries when menu closed
	
}

if taking_input
{
	image_blend = c_red;	
	if keyboard_string != ""{
		var _amount_string = string_digits(keyboard_string);
		if _amount_string != ""{
			amount = int64(_amount_string);
		}
	}
} else {
	image_blend = c_white;
}