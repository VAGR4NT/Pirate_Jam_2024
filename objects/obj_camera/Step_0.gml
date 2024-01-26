/// @description Uodates Camera Position to Follow Target

//Update Destination

if (instance_exists(follow_target)) 
{
	x_target = follow_target.x;
	y_target = follow_target.y;
	
}

// Move Camera to Target Position
x += (x_target - x)/cam_spd;
y += (y_target - y)/cam_spd;

x = clamp(x, half_width_view + cam_buff, room_width - half_width_view - cam_buff);
y = clamp(y, half_height_view + cam_buff, room_height - half_height_view - cam_buff);

// Screen Shake
x += random_range(-shake, shake);
y += random_range(-shake, shake);
shake = max(0, shake - ((1/shake_length)*shake_mag));

// Final Update For Camera Position
camera_set_view_pos(cam, x - half_width_view, y - half_height_view);

//Parallax Set up
//if (layer_exists(back_layerID_far))
//{
//	layer_x(back_layerID_far, x/plx_far_spd);
//}

//if (layer_exists(back_layerID_mid))
//{
//	layer_x(back_layerID_mid, x/plx_mid_spd);
//}

//if (layer_exists(back_layerID_close))
//{
//	layer_x(back_layerID_close, x/plx_close_spd);
//}