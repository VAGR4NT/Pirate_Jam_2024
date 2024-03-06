var _buff = 50;
var _index = 0;
var _ystart = 40;
var _xstart = 10;

ResetDraw();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_DPComic_40);
draw_text_outline(global.true_width/2, _ystart,"Credits", 2, c_black, 4);
_index++
draw_set_font(fnt_DPComic_20);
draw_text_outline(global.true_width/2, _ystart + (_index * _buff),"Music", 2, c_black, 4);
_index++
draw_set_font(fnt_DPComic_10);
draw_text_outline(global.true_width/2, _ystart + (_index * _buff),global.music_credits_array[0], 2, c_black, 4);



ResetDraw();