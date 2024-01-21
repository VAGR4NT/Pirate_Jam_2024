/// @desc
draw_self();

if target != noone
{
	draw_text(x,y, target);
	draw_line(x,y, target.x, target.y);
}