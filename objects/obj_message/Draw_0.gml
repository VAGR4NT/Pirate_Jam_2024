/// Draws Text
ResetDraw();
draw_set_color(color);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//draw_text(x,y-10,text);
draw_text_outline(x,y-10,text,2,c_black,4)
ResetDraw();