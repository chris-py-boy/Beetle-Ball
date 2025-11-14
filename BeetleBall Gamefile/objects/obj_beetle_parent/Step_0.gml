scr_fetch_input()


		#region Movement
		
		
//changing dir momentum
var _dir_mod = (right_key[player_num] - left_key[player_num]) //returns 1 or -1
var _current_dir = sign(h_spd)

if (left_key[player_num] && !right_key[player_num]) or (!left_key[player_num] && right_key[player_num]){
	//not at peak move speed yet
	if clamp(h_spd, -move_spd, move_spd) != move_spd*_dir_mod{
		h_acc = move_acc*_dir_mod
	}else{//at/beyond peak hspd
	h_spd = move_spd*_dir_mod
	h_acc = 0
	}
}else{//no input
	//if still moving
	if abs(h_spd) > move_acc{//if outside of acceptable range
		h_acc = -_current_dir*move_acc//apply drag
	}else{
		//stop
		h_spd = 0
		h_acc = 0
	}
}



//execute movement

if ability_pressed[player_num]{
	x -= 15
}

h_spd += h_acc
var _x_change = h_spd
var _y_change = v_spd

//execute movement
if place_free(x + _x_change, y){
	x += _x_change

}else{	
	//if theres something there, snap it to where it can go
	//x snap
	var _upper_limit = abs(_x_change)
	_x_change = 0.05*sign(_x_change)
	//checks where it hits wall
	while abs(_x_change) < _upper_limit && place_free(x + _x_change, y){
		_x_change += 0.05*sign(_x_change)
	}
	//snaps you up against position
	x += _x_change - 0.05*sign(_x_change)
	h_spd = 0
}

if place_free(x, y + _y_change){
	y += _y_change

}else{	
	var _upper_limit = abs(_y_change)
	_y_change = 0.05*sign(_y_change)
	//checks where it hits wall
	while abs(_y_change) < _upper_limit && place_free(x + _y_change, y){
		_y_change += 0.05*sign(_y_change)
	}
	//snaps you up against position
	y += _y_change - 0.05*sign(_y_change)
	v_spd = 0
}


			#endregion
		
		