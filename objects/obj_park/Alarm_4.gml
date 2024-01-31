/// @desc leaving park message

var _message = instance_create_layer(obj_player.x,obj_player.y,"UI",obj_message);
_message.text = "Visitors are leaving the park";
_message.color = c_white;
_message.disappear_rate = .01;
_message.rise_amount = -.1;

alarm[4] = -1;