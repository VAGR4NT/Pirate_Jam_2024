/// @desc
//if obj_park.time >= 5{
	//fx_set_parameter(_fx_tint, "g_TintCol", [61, 61, 255, (obj_park.time-5)/5]);

//}
if mouse_on and mouse_check_button_pressed(mb_left)
{
	layer_enable_fx("Night_Filter", true);
}


if mouse_on and mouse_check_button_pressed(mb_right)
{
	layer_enable_fx("Night_Filter", false);
}