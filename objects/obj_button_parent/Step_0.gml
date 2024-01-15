mouse_hover = GUIMouseDetection(x_start, x_start + width, y_start, y_start + height);

if mouse_hover == true{
	if mouse_check_button(mb_left)
	{
		switch(type)
		{
			case BUTTON_TYPE.SEED:
				if instance_exists(obj_mouse)
				{
					if obj_mouse.object_held != text
					{
						obj_mouse.object_held = text;
						obj_mouse.object_sprite = button_sprite;
					}
				}
			break;
		}
	}
	button_image_index = 1;
} else {
	button_image_index = 0;
}