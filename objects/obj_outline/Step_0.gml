if obj_mouse.mode == MOUSE_MODES.PLANTING{
if instance_exists(target)
{
	image_alpha = 1;
	x = target.x - plot_size/2;
	y = target.y - plot_size/2;
} else {
	image_alpha = 0;
}

image_index = size;

if place_meeting(x,y,obj_player)
{
	player_contact = true;
} else {
	player_contact = false;
}
} else {
	image_alpha = 0;
}