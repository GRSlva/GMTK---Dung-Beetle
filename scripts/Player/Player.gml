// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_movement_state(){
	if jumpSave > 0 jumpSave -= 1;
	var _ball = instance_place(x, y+velocity.y, o_ball);
	
	if place_meeting(x, bbox_bottom+2, _ball){
		velocity.x = clamp(velocity.x + _ball.velocity.x,-_ball.velocity.x,_ball.velocity.x);
		//rolling = true;
	}
	
	#region Movement	
	moveAxis.x = key_right - key_left;
		
	//change dir
	if moveAxis.x != 0 dir.x = moveAxis.x;
		
	//movement x
	if moveAxis.x != 0{
		velocity.x = smooth_approach(velocity.x,moveAxis.x * max_spd,acc);	
	}
	else velocity.x = smooth_approach(velocity.x,0,frc);



	moveAxis.y = key_down - key_up;
		
	//change dir
	if moveAxis.y != 0 dir.y = moveAxis.y;
	#endregion
		
	#region Jump
	//reset jumps
	if grounded{
		jumpNumber = jumpDefault
		wJumpCur = 0;
	}

	//Save input to jump when grounded
	if key_jump && !grounded && jumpNumber <= 0{
		jumpSave = 100;
	}
	
	if !keyboard_check(ord("X")) && velocity.y < 0{
		velocity.y *= .75
	}

	//jump
	if (key_jump || jumpSave>0) && (jumpNumber > 0) && grounded{
		velocity.y = jumpSpd;
		scale = new Vector2(.3,1.7);
		jumpNumber--;
		jumpSave = false;
	}

	#endregion

	#region Wall Jump

	if collision_line(bbox_left-8,y,bbox_right+8,y,o_col,false,true) && !grounded && key_jump && wJumpCur < wJumpMax{
		velocity.x = dir.x * wJumpHsp;
		velocity.y = wJumpVsp;
		dir.x *= -1;
		scale = new Vector2(.3,1.7);
		wJumpCur++;
	}

	#endregion

	
}

function player_hit_by_ball(_velocity){
	velocity.x = _velocity.x * 1.2;
}