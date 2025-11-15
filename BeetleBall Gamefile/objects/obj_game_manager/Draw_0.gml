scr_fetch_cam()

var _ui_border = 25
//player 1 
	//score
var _score_1_text_col = c_gray
var _score_1_text_w = 3
var _score_1_text_h = 3
var _score_1_text_x = cam_x + cam_w - _ui_border - string_width(player_score[0])*_score_1_text_w
var _score_1_text_y = _ui_border
draw_text_transformed_colour( _score_1_text_x, _score_1_text_y, player_score[0], _score_1_text_w, _score_1_text_h, 0, _score_1_text_col, _score_1_text_col, _score_1_text_col, _score_1_text_col, 1)


//player 2
	//score
var _score_2_text_col = c_gray
var _score_2_text_w = 3
var _score_2_text_h = 3
var _score_2_text_x = cam_x + _ui_border
var _score_2_text_y = _ui_border
draw_text_transformed_colour( _score_2_text_x, _score_2_text_y, player_score[1], _score_2_text_w, _score_2_text_h, 0, _score_2_text_col, _score_2_text_col, _score_2_text_col, _score_2_text_col, 1)
