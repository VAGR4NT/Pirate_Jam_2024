/// @description change plant stats

if occupied_by != ""{
	occupied = true;
}

if occupied = false or occupied_by == "flower"{
	passable = true;
} else {
	passable = false;
}

if occupied{
	image_blend = c_grey;
} else {
	image_blend = c_white;
}