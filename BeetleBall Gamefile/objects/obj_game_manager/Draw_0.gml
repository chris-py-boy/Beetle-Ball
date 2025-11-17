scr_fetch_cam()

var _ui_border = 50

//player 1
if player_num_id[0].has_ability = true{
		//abilty charge
	var _ability_1_x1 =	cam_x + cam_w -_ui_border*2
	var _ability_1_y1 = cam_y + _ui_border + 15
	var _ability_1_x2 = _ability_1_x1 - 200
	var _ability_1_y2 = _ability_1_y1 + 40
	var _ability_charge_1 = player_num_id[0].ability_charge
	if player_num_id[0].ability_charge  >= player_num_id[0].ability_use_threshold{
		var _ability_charge_1_col = player_col[0]
	}else{
		var _ability_charge_1_col = c_white
	}
	draw_healthbar( _ability_1_x1, _ability_1_y1, _ability_1_x2, _ability_1_y2, _ability_charge_1, c_black, _ability_charge_1_col, _ability_charge_1_col, 180, true, false)
}
	//score
var _score_1_text_col_1 = player_col[0]
var _score_1_text_col_2 = c_white
var _score_1_text_w = 3
var _score_1_text_h = 3
var _score_1_text_x = cam_x + cam_w - _ui_border + string_width(player_score[0])*_score_1_text_w/2 - string_width(player_score[0])*_score_1_text_w
var _score_1_text_y = _ui_border
draw_text_transformed_colour( _score_1_text_x, _score_1_text_y, player_score[0], _score_1_text_w, _score_1_text_h, 0, _score_1_text_col_1, _score_1_text_col_1, _score_1_text_col_2, _score_1_text_col_2, 1)


//player 2
if player_num_id[0].has_ability = true{
	//abilty charge
	var _ability_2_x1 =	_ui_border*2 + cam_x
	var _ability_2_y1 = _ui_border + 15 + cam_y
	var _ability_2_x2 = _ability_2_x1 + 200
	var _ability_2_y2 = _ability_2_y1 + 40
	var _ability_charge_2 = player_num_id[1].ability_charge
	if player_num_id[1].ability_charge  >= player_num_id[1].ability_use_threshold{
		var _ability_charge_2_col = player_col[1]
	}else{
		var _ability_charge_2_col = c_white
	}
	draw_healthbar( _ability_2_x1, _ability_2_y1, _ability_2_x2, _ability_2_y2, _ability_charge_2, c_black, _ability_charge_2_col, _ability_charge_2_col, 0, true, false)
}

	//score
var _score_2_text_col_1 = player_col[1]
var _score_2_text_col_2 = c_white
var _score_2_text_w = 3
var _score_2_text_h = 3
var _score_2_text_x = cam_x + _ui_border - string_width(player_score[1])*_score_2_text_w/2
var _score_2_text_y = _ui_border
draw_text_transformed_colour( _score_2_text_x, _score_2_text_y, player_score[1], _score_2_text_w, _score_2_text_h, 0, _score_2_text_col_1, _score_2_text_col_1, _score_2_text_col_2, _score_2_text_col_2, 1)

