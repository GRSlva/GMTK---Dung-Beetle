// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_input(){
	key_left = keyboard_check(vk_left);
	key_right = keyboard_check(vk_right);
	key_up = keyboard_check(vk_up);
	key_down = keyboard_check(vk_down);
	key_jump = keyboard_check_pressed(ord("X"));
	key_act = keyboard_check(ord("Z"));
	key_act_released = keyboard_check_released(ord("Z"))
}