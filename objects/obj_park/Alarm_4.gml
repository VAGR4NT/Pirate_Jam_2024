/// @desc leaving park message

var _message = instance_create_layer(obj_player.x,obj_player.y,"UI",obj_message);
_message.text = "Visitors are leaving the park";
_message.color = c_white;
_message.disappear_rate = .005;
_message.size = 40;
_message.rise_amount = 0;
_message.on_gui_layer = true;
_message.gui_x = global.true_width/2;
_message.gui_y = global.true_height/3;

alarm[4] = -1;