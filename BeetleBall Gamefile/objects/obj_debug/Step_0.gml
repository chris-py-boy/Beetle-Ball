if keyboard_check_pressed(vk_escape){
	game_end()
}
if keyboard_check_pressed(vk_tab){
	scr_reset_positions()
}
if mouse_check_button_pressed(mb_left){
	obj_ball.x = mouse_x
	obj_ball.y = mouse_y
}