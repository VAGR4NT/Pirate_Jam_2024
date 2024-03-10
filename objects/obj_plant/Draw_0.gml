/// @description Debugging Tool
ResetDraw();
draw_self();
var _x_buff = 50;
var _y_buff = 25;
var _water_bar_length = 40;
var _water_bar_height = 2;
var _water_bar_y_buff = 10;

if obj_mouse.mode == MOUSE_MODES.WATERING
{
draw_healthbar(x - (_water_bar_length/2), y - _water_bar_height - _water_bar_y_buff, x + (_water_bar_length/2), y - _water_bar_y_buff,(watered_perc/100)*100,c_grey, c_blue, c_blue, 0,true,true);
}
//draw_text(x,y, image_xscale)

ResetDraw();