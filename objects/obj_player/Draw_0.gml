draw_self();

var _amount = (water_held/water_max) * 100;
draw_healthbar(x - 20, y - 40, x + 20, y - 37, _amount, c_grey, c_blue, c_blue, 0,true,true);
//draw_text(x + 20, y - 32, "water: " + string(water_held));