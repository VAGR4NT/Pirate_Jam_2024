/// @desc Enable picture mode
layer_set_visible("UI", false);
view_set_visible(2,true);
surface_resize(application_surface, view_wport[2],view_hport[2]);
alarm[1] = -1;