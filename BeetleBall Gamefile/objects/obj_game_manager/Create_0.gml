player_score[0] = 0
player_score[1] = 0


//create players
player_start_x[0] = 1120
player_start_x[1] = 160
player_start_y = 608

player_col[0] = c_yellow
player_col[1] = c_lime

selected_beetle[0] = obj_beetle_parent
selected_beetle[1] = obj_beetle_parent

//store player id in this var
player_num_id[0] = instance_create_depth(player_start_x[0], player_start_y, 0, selected_beetle[0])

player_num_id[0].player_num = 0

player_num_id[1] = instance_create_depth(player_start_x[1], player_start_y, 0, selected_beetle[1])

player_num_id[1].player_num = 1
