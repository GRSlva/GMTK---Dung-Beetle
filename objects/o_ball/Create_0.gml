/// @description Insert description here
// You can write your code in this editor

time_held = 0;
velocity = new Vector2();
acceleration = 0;
max_acceleration = 100;
grv = .34;

holding = false;
update_movement = method(id, update_ball_movement);
update_hold = method(id, hold_ball);
check_col_x = method(id, check_col_x)
check_col_y = method(id, check_col_y)