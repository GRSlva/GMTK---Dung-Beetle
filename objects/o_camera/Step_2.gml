/// @description Insert description here

camera_set_view_size(VIEW, cam_size.x, cam_size.y);


#region SCREENSHAKE

if shake==true{
	shake = false;
	randomize()
	__angle=random_range(-6,6)
	camera_set_view_angle(view_camera[0],__angle);
}else
if shake=false{
	camera_set_view_angle(view_camera[0],smooth_approach(camera_get_view_angle(view_camera[0]),0,.2));
}

#endregion

if instance_exists(o_player){
	var _target_pos = new Vector2(0,0);
	
	var _cam_pos = new Vector2(camera_get_view_x(VIEW), camera_get_view_y(VIEW));
	
	if region == noone{
		_target_pos = new Vector2(o_player.x, (o_player.y - 16));
	}
	else{
		_target_pos = new Vector2((o_player.x*2+region.x)/3, ((o_player.y - 16)*2 + region.y)/3);	
		_cam_pos.x = smooth_approach(_cam_pos.x,clamp(_cam_pos.x-cam_size.x,region.bbox_left,region.bbox_right),.05);
	}
	
	_target_pos.x -= cam_size.x/2;
	_target_pos.y -= cam_size.y/2;
	
	camera_set_view_pos(VIEW,smooth_approach(_cam_pos.x+shake,_target_pos.x,.1),smooth_approach(_cam_pos.y+shake,_target_pos.y,.1));
	
}