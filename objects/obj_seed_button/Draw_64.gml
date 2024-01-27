// Inherit the parent event
//event_inherited();
draw_self();
if text == "flower" or text == "bush"{
	draw_text_outline(x + 32,y - 32,string(text) + " seeds", 2, c_black, 4);
} else {
	draw_text_outline(x + 32,y - 32,string(text) + " saplings", 2, c_black, 4);
}
draw_text_outline(x + 32,y -12,"x" + string(quantity), 2, c_black, 4);