/// @description change plant stats

if plant_object == noone or plant_object == -1{
	passable = true;
} else {
	passable = false;
}

if occupied{
	image_blend = c_grey;
} else {
	image_blend = c_white;
}