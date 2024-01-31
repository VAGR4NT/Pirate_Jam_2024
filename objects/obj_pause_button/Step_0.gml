event_inherited();

image_index = mouse_hover;

if mouse_hover and mouse_check_button_pressed(mb_any)
{
	instance_create_layer(x,y,"UI", obj_pause);
}