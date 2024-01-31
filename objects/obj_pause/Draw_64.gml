/// @desc show instructions
ResetDraw();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_outline(global.true_width/2, global.true_height/3,"PAUSED", 2, c_black, 4);
draw_text_outline(global.true_width/2, global.true_height/3 + 40,"Press Space or Z to resume", 2, c_black, 4);
ResetDraw();