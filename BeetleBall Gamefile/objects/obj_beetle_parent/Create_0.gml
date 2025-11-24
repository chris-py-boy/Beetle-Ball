//move physics
move_spd = 6
h_spd = 0
v_spd = 0
move_acc = 0.5
grav_acc = 0.3
jump_acc = 11
h_acc = 0
v_acc = 0


//player data
player_num = 0

hit_ball = false
kick_power = 1 //multiplier of force put into the ball

has_ability = false
ability_can_charge = true
ability_active = false
ability_charge = 0//players current charge
ability_charge_max = 100
ability_charge_rate = 0.1//rate of charging
ability_use_threshold = 100//how much charge to use ability
ability_use_drain = 0//rate of ability use if applicable

//appearance
face_x_dir = 1

setup = false//for things that should happen after create event