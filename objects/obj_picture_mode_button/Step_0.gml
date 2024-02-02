event_inherited();
image_index = mouse_hover;

if mouse_hover and mouse_check_button_pressed(mb_any)
{
	//Enter picture mode
	obj_constant.alarm[1] = 1; 
}