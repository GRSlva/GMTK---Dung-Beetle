/// @description Collision

if place_meeting(x + velocity.x, y, o_col){
    while(!place_meeting(x + sign(velocity.x),y,o_col)){
        x += sign(velocity.x);
    }
    velocity.x = 0;
}

x += velocity.x;

if place_meeting(x, y + velocity.y, o_col){
    while(!place_meeting(x,y + sign(velocity.y),o_col)){
        y += sign(velocity.y);
    }
    velocity.y = 0;
}

y += velocity.y;

scale.x = smooth_approach(scale.x,1,.1);
scale.y = smooth_approach(scale.y,1,.1);