// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hold_ball(_posy, _posx){
	y = _posy;
	x = _posx;

}

function update_ball_movement(_velocity = Vector2){
	velocity.x = _velocity.x;
	time_held = 1;
	alarm[0] = 2;
}

function check_col_x(_dir){
	return place_meeting(x + _dir, y, o_col)
}

function check_col_y(_dir){
	return place_meeting(x, y + _dir, o_col)
}