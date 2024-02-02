/// @desc Disable picture mode

layer_set_visible("UI", true);
view_set_visible(2,false);
surface_resize(application_surface, view_wport[0],view_hport[0]);
alarm[2] = -1;
