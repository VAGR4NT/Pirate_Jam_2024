/// @description Stores the item selection information uses the item selected in the hotbar (ie seeds, water)
object_held = "";
object_sprite = -1;
quantity = -1;
show_outline = false;
outline_obj = instance_create_layer(x,y, "UtilityObjects", obj_outline);
plots_needed = 1; //1,3,9
can_place = false;