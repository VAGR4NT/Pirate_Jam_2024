if instance_exists(target)
{
	image_alpha = 1;
	x = target.x - 16;
	y = target.y - 16;
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