depth = -1 //render abover players
//cause ball to spin
draw_angle += -h_spd 

//draw self
if !place_meeting(x,y,obj_wall){
draw_sprite_ext(sprite_index, image_index, floor(x), floor(y), 1, 1, draw_angle, c_white, 1)
}