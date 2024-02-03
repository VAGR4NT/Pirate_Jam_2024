event_inherited();

image_index = global.painting_enabled;

if mouse_hover and mouse_check_button_pressed(mb_any)
{
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