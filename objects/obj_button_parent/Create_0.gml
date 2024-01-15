///@desc parent object for button elements in the game
mouse_hover = false;
type = -1; //
/*
Enum BUTTON_TYPE{
	SEED,
	OPTIONS,
	PAUSE,
	EXIT
}
*/
text = ""; //flower, bush, tree

x_start = -1;
y_buff = -1;
button_index = 0;
y_start = -1;

button_sprite = spr_grass;//spr_button;
width = sprite_get_width(button_sprite);
height = sprite_get_height(button_sprite);

button_image_index = 0;