var _player_collision_id = 0

if place_meeting( x, y, obj_beetle_parent){
	_player_collision_id = instance_place( x, y, obj_beetle_parent)
	var _angle_to_player = point_direction( _player_collision_id.x, _player_collision_id.y,  x, y)
	
	if _player_collision_id != noone{
		h_spd = lengthdir_x(5, _angle_to_player) + _player_collision_id.h_spd
		v_spd = lengthdir_y(5, _angle_to_player) + _player_collision_id.v_spd
	}
}


x += h_spd
y += v_spd