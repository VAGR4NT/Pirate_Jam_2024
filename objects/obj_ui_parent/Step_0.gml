if state == VISUAL_STATE.INACTIVE exit;

if state == VISUAL_STATE.ACTIVE
{
	if position_meeting(MOUSE_GUI_X, MOUSE_GUI_Y, id)
	{
		mouse_hover = true;
	} else {
		mouse_hover = false;
	}
}

//if mouse_hover{
//	image_blend = c_red;
//} else {
//	image_blend = c_white;
//}

