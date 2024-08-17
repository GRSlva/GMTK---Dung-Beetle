///Camera Variables

#macro VIEW view_camera[0]

//camera size
cam_size = new Vector2(160*4,90*4);

scale = 1;

window_set_size(cam_size.x*scale,cam_size.y*scale);
alarm[0] = 1;

//resizes
surface_resize(application_surface,cam_size.x*scale,cam_size.y*scale);
display_set_gui_size(cam_size.x * scale, cam_size.y * scale);

//other
target = o_player;
region = noone;


shake = true;