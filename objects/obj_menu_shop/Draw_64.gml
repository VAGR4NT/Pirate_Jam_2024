/// @desc
if state == VISUAL_STATE.ACTIVE{
ResetDraw();
draw_self();
var _top_y_buff = 50;
var _x_start = x - (sprite_width/2)
var _y_start = y + _top_y_buff;
var _index = 33;
var _y_buff = 15;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_outline(_x_start, _y_start, main_text,2,c_black,4);

draw_text_outline(flower_text_x, flower_text_y, "Flower Seeds: ",2,c_black,4);
draw_text_outline(flower_text_x, flower_amount_text_y,  num_flower_seeds,2,c_black,4);
draw_text_outline(flower_text_x, flower_cost_text_y, "Cost: " + string(num_flower_seeds * flower_price),2,c_black,4);

draw_text_outline(bush_text_x, bush_text_y, "Bush Seeds: ",2,c_black,4);
draw_text_outline(bush_text_x, bush_amount_text_y,  num_bush_seeds,2,c_black,4);
draw_text_outline(bush_text_x, bush_cost_text_y, "Cost: " + string(num_bush_seeds * bush_price),2,c_black,4);

draw_text_outline(tree_text_x, tree_text_y, "Tree Saplings: ",2,c_black,4);
draw_text_outline(tree_text_x, tree_amount_text_y,  num_tree_saplings,2,c_black,4);
draw_text_outline(tree_text_x, tree_cost_text_y, "Cost: " + string(num_tree_saplings * tree_price),2,c_black,4);

if can_buy
{	
	draw_text_outline(_x_start, _y_start + (_index * _y_buff), "Total cost: " + string(total_cost),2,c_black,4);
} else {
	draw_set_color(c_red);
	draw_text_outline(_x_start, _y_start + (_index * _y_buff), "Total cost: " + string(total_cost),2,c_black,4);
	_index++;
	var _diff = total_cost - obj_constant.cash;
	draw_text_outline(_x_start, _y_start + (_index * _y_buff), "Total cost is greater than cash by: " + string(_diff),2,c_black,4);
}
//[YES] [NO] buttons

ResetDraw();
}