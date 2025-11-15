		scr_fetch_input()
		#region setup
		
		
if setup = false{
	setup = true
	
	if player_num = 0{//make right player face the left side
		face_x_dir = -1
	}
	image_xscale = face_x_dir
	
}


		#endregion

		#region Movement
		
		
//changing x dir momentum
var _dir_mod = (right_key[player_num] - left_key[player_num]) //returns 1 or -1
var _current_dir = sign(h_spd)

//if there is input
if (right_key[player_num]) - left_key[player_num] != 0 {
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

//y dir movement
var _on_ground = !place_free(x, y + 0.05)

if (up_key[player_num] && _on_ground){
	
	v_spd = -jump_acc
	
}

v_acc = grav_acc //grav



//execute movement
h_spd += h_acc
var _x_change = h_spd
//execute movement
if place_free(x + _x_change, y){ //x movement first
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



v_spd += v_acc
var _y_change = v_spd
if place_free(x, y + _y_change){ //y movement second
	y += _y_change

}else{	
	var _upper_limit = abs(_y_change)
	_y_change = 0.05*sign(_y_change)
	//checks where it hits wall
	while abs(_y_change) < _upper_limit && place_free(x, y + _y_change){
		_y_change += 0.05*sign(_y_change)
	}
	//snaps you up against position
	y += _y_change - 0.05*sign(_y_change)
	v_spd = 0
}


			#endregion
		
		