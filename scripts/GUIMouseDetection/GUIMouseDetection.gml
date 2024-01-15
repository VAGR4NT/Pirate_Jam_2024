/// @function	GUIMouseDetection(x1, x2, y1, y2)
/// @param x1
/// @param x2
/// @param y1
/// @param y2
function GUIMouseDetection(){

	var x1 = argument0;
	var x2 = argument1;
	var y1 = argument2;
	var y2 = argument3;
	
	if  global.mouse_gui_x > x1 
	and global.mouse_gui_x	< x2
	and global.mouse_gui_y > y1
	and global.mouse_gui_y	< y2
	{
		return true;
	} else {
		return false;
	}

}