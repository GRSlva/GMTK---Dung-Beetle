/// @description Basic Movement
// You can write your code in this editor

if death room_restart();

get_input();

//Scale
if place_meeting(x,y+1,o_col) && !grounded scale = new Vector2(1.7,.5);

//
grounded = place_meeting(x,y+1,o_col);
if moveAxis.x != 0 dir.x = sign(moveAxis.x);
velocity.y += grv;

#region Last Dir Moved
		
if moveAxis.y != 0 lastDir.y = moveAxis.y;
		
if moveAxis.x != 0 lastDir.x = moveAxis.x;
		
#endregion

player_movement_state()


#region Balls

if ball == noone ball = instance_place(x+velocity.x, y, o_ball);
		
if place_meeting(x+velocity.x, y, ball){
	show_debug_message("a")
	if key_act{
		holding = true;
		ball.holding = true;
	}
	else if !ball.check_col_x(velocity.x) ball.update_movement(velocity);
}

if holding{
	if ball.check_col_x(velocity.x) velocity.x *= -1;
	if ball.check_col_y(velocity.y) velocity.y *= -1;
	ball.update_hold(bbox_top-ball.sprite_yoffset-8 + velocity.y, x+velocity.x)
	if key_act_released{
		ball.velocity.x = velocity.x + 3*lastDir.x;
		ball.velocity.y = -5;
		holding = false;
		ball.holding = false;
	}
}

#endregion
