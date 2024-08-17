/// @description Variables
// You can write your code in this editor

death = false;

#region Movement
	
velocity  = new Vector2(0, 0);
moveAxis = new Vector2(0, 0);

acc = .3;
frc = .2;

max_spd = 2.5;
	
#endregion
	
#region Jump
	
grounded = false;

//Jump
jumpSpd = -8;
jumpNumber = 1;
jumpDefault = 1;
jumpSave = false;

grv = .34;
	
//Wall Jump
wJumpCur = 0;
wJumpMax = 5;
wJumpHsp = -12;
wJumpVsp = -7;
	
#endregion

//direction
dir = new Vector2(1, 0);
lastDir = new Vector2(0, 0);

//State
state = "free";

//balling
ball = noone;
holding = false;
hit_by_ball = method(id, player_hit_by_ball)

//Image
scale = new Vector2(1,0);