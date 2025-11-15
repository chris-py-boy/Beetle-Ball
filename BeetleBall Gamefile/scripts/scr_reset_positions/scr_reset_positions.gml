// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_reset_positions(){
	obj_ball.x = room_width/2
	obj_ball.y = 192
	obj_ball.h_spd = 0
	obj_ball.h_acc = 0
	obj_ball.v_spd = 0
	obj_ball.v_acc = 0
	
	for (_p = 0; _p <= 1; _p++){
		obj_game_manager.player_num_id[_p].x = obj_game_manager.player_start_x[_p]
		obj_game_manager.player_num_id[_p].y = obj_game_manager.player_start_y
	}
}