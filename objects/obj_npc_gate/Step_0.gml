if obj_park.closed
{
	object_set_visible(self, false);
	passable = true;
} else {
	object_set_visible(self, true);
	passable = false;
}