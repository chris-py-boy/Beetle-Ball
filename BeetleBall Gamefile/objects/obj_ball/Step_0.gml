var _player_collision_id = 0

		#region ball physics
//check if hit && get hit
if place_meeting( x, y, obj_beetle_parent){
	//get multiple collisions
	var _collision_id_list = ds_list_create()
	var _collisions_num = instance_place_list(x, y, obj_beetle_parent, _collision_id_list, false);
	
	//how much velocity to keep
	h_spd = h_spd/4
	v_spd = v_spd/4
	
	//apply new velocities
	for (var _c = 0; _c < _collisions_num; _c++){
		var _angle_to_player = point_direction( _collision_id_list[| _c].x, _collision_id_list[| _c].y,  x, y)
		h_spd += ((lengthdir_x(hit_base_power, _angle_to_player) + _collision_id_list[| _c].h_spd*hit_momentum_mod)/_collisions_num)*_collision_id_list[| _c].kick_power
		v_spd += ((lengthdir_y(hit_base_power, _angle_to_player) + _collision_id_list[| _c].v_spd*hit_momentum_mod)/_collisions_num)*_collision_id_list[| _c].kick_power
		//let kicker know they've hit the ball
		_collision_id_list[| _c].hit_ball = true
	}
	
	ds_list_destroy(_collision_id_list);
	
}

//drag & grav effect
var _move_angle = point_direction(x, y, x + h_spd, y + v_spd)
var _drag_x = -lengthdir_x(drag_acc, _move_angle)
var _drag_y = -lengthdir_y(drag_acc, _move_angle)

v_acc = grav_acc + _drag_y
h_acc = _drag_x


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
	h_spd = -h_spd/1.1
	v_spd = v_spd/v_friction
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
	v_spd = -v_spd/1.1
	h_spd = h_spd/h_friction
}
			#endregion
		
		#region var checks

on_ground = place_meeting(x, y + grav_acc, obj_wall)

		#endregion