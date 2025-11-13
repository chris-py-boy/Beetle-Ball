scr_fetch_input()


		#region Movement
		
		
//changing dir momentum
if left_key[player_num] && !right_key[player_num]
	{
	if h_spd > -move_spd
		{
		h_acc = -move_acc
		}else{
		h_spd = -move_spd
		h_acc = 0
		}
	}else{ 
		if right_key[player_num] && !left_key[player_num]
			{
			if h_spd < move_spd
				{
				h_acc = move_acc
				}else{
				h_spd = move_spd
				h_acc = 0
				}
			}else{
				if h_spd > move_acc{
					h_acc = -move_acc
				}else{
					if h_spd < -move_acc{
						h_acc = move_acc
					}else{
						h_spd = 0
						h_acc = 0
					}
				}
			}
	}


//execute movement

if ability_pressed[player_num]{
	x -= 15
}

h_spd += h_acc
var _x_target = h_spd
var _y_target = v_spd

if place_free(x + _x_target, y + _y_target){
	x += _x_target
	y += _y_target

}else{	
	//if theres something there, snap it to where it can go
		//x snap
		var _increment = 0
		while h_spd >= 0 && !place_free(x + _x_target, y + _y_target){
			_increment += 0.05*sign(h_spd)
			_x_target = h_spd - _increment
			_y_target = v_spd
		}
		x += _x_target
		
}


			#endregion
		
		