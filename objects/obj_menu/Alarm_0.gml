/// @desc
if dismissable{
	exit_button = instance_create_layer(x,y,"UI",obj_menu_exit);
	exit_button.parent_menu = self;
}
alarm[0] = -1;