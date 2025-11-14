// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_fetch_input(_player_controls = true){

		up_key[0] = keyboard_check(vk_up)
		up_pressed[0] = keyboard_check_pressed(vk_up)
		left_key[0] = keyboard_check(vk_left)
		left_pressed[0] = keyboard_check_pressed(vk_left)
		down_key[0] = keyboard_check(vk_down)
		down_pressed[0] = keyboard_check_pressed(vk_down)
		right_key[0] = keyboard_check(vk_right)
		right_pressed[0] = keyboard_check_pressed(vk_right)
		
		ability_key[0] = keyboard_check(vk_decimal)
		ability_pressed[0] = keyboard_check_pressed(vk_decimal)
		ability_released[0] = keyboard_check_released(vk_decimal)
		
		up_key[1] = keyboard_check(ord("W"))
		up_pressed[1] = keyboard_check_pressed(ord("W"))
		left_key[1] = keyboard_check(ord("A"))
		left_pressed[1] = keyboard_check_pressed(ord("A"))
		down_key[1] = keyboard_check(ord("S"))
		down_pressed[1] = keyboard_check_pressed(ord("S"))
		right_key[1] = keyboard_check(ord("D"))
		right_pressed[1] = keyboard_check_pressed(ord("D"))
		
		ability_key[1] = keyboard_check(ord("1"))
		ability_pressed[1] = keyboard_check_pressed(ord("1"))
		ability_released[1] = keyboard_check_released(ord("1"))

}