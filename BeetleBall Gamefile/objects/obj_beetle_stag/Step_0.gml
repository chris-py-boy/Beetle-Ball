event_inherited();

			#region ball grab ability

//check if can activate ability
if ability_charge > ability_use_threshold && (ability_key[player_num] or ability_released[player_num]){
	ability_active = true
	ability_can_charge = false
}else{
	//even if above threshold, the ability goes until it runs out
	if (!ability_key[player_num] && !ability_released[player_num]) or ability_charge <= ability_use_drain{
		ability_active = false
		ability_can_charge = true
	}
}

//execute ability
if ability_active{
	
	ability_charge -= ability_use_drain
	
	if place_meeting(x + grab_ball_range*image_xscale, y + 5, obj_ball){
		if ability_key[player_num]{
			//grab the ball
				obj_ball.x = x + grabbed_ball_x_offset*image_xscale
				obj_ball.y = y + grabbed_ball_y_offset
				obj_ball.h_spd = 0
				obj_ball.v_spd = 0
				released_ball_v_spd = (down_key[player_num] - up_key[player_num])*released_ball_force
				released_ball_h_spd = (right_key[player_num] - left_key[player_num])*released_ball_force
		}else{
			if ability_released[player_num]{
				obj_ball.h_spd = released_ball_h_spd
				obj_ball.v_spd = released_ball_v_spd
			}
		}
		
	}
}


			#endregion