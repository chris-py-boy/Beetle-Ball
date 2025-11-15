player_score[0] = 0
player_score[1] = 0


//create players
player_start_x[0] = 160
player_start_x[1] = 1120
player_start_y = 608

//store player id in this var
player_num_id[0] = instance_create_depth(player_start_x[0], player_start_y, 0, obj_beetle_parent)

player_num_id[0].player_num = 0

player_num_id[1] = instance_create_depth(player_start_x[1], player_start_y, 0, obj_beetle_parent)

player_num_id[0].player_num = 1
