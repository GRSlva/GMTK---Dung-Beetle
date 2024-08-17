/// @description Insert description here
// You can write your code in this editor

if place_meeting(x + velocity.x, y, o_col){
    while(!place_meeting(x + sign(velocity.x),y,o_col)){
        x += sign(velocity.x);
    }
    //if !place_meeting(x+lengthdir_x(1, point_direction(x,y,o_player.x,o_player.y)),y, o_player) velocity.x *= -1;
	//else velocity.x = 0;
	velocity.x *= -1;
}

x += velocity.x;

if place_meeting(x, y + velocity.y, o_col){
    while(!place_meeting(x,y + sign(velocity.y),o_col)){
        y += sign(velocity.y);
    }
    velocity.y *= -.2;
}

y += velocity.y;

if place_meeting(x + velocity.x, y, o_player)
{
	o_player.hit_by_ball(velocity);
	velocity.x = 0;
}
