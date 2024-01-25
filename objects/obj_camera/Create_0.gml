/// @description Set Up Starting Camera Size and Position

cam = view_camera[0]; // Gets id for the main display camera
follow_target = obj_player; // Follows the player character by default

half_width_view = camera_get_view_width(cam)*.5; // Gets half the current display's screen width
half_height_view = camera_get_view_height(cam)*.5; // Gets half the current display's screen height

// shake_length: length of shaking in frames
// shake_mag: maximum magnitude of shaking in pixels
// shake: jitter, the distance the camera moves with each shake
// cam_buff: buffer to prevent user from seeing outside the level room

//Starts the camera at the room's specific sarting position
x_target = xstart; 
y_target = ystart;
// cam_spd: how fast the camera tavels between following targets in pixels/frame
cam_spd = 2;
//Parallaxes the Background 
// back_layerID_far: ID of the farthest background layer
//back_layerID_far = layer_get_id("Background_Far");
// back_layerID_mid ID of the middle background layer
//back_layerID_mid = layer_get_id("Background_Mid");
// back_layerID_close: ID of closest background layer
//back_layerID_close = layer_get_id("Background_Close");
//plx_???_spd: Parallax Speed of corresponding layer based on distance from player