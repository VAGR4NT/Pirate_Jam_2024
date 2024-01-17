// Inherit the parent event
//event_inherited();
draw_self();
if text == "flower" or text == "bush"{
	draw_text(x + 32,y - 32,string(text) + " seeds");
} else {
	draw_text(x + 32,y - 32,string(text) + " saplings");
}
draw_text(x + 32,y -12,"x" + string(quantity));