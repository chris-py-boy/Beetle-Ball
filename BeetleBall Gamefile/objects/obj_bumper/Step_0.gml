if place_meeting( x_anchor + sprite_width, y, obj_ball) or place_meeting( x_anchor - sprite_width, y, obj_ball){
	if obj_ball.h_spd = 0 && abs(obj_ball.v_spd) < obj_ball.grav_acc && obj_ball.on_ground{  
		bumping = true
	}else{
		bumping = false
	}
}else{
	bumping = false
}

if bumping = true{
	x_offset = lerp(x_offset, sprite_width*image_xscale, 0.3)
	
	if x_offset = sprite_width*image_xscale{
		obj_ball.h_spd = 10*image_xscale
		obj_ball.v_spd = -10
	}
}else{
	if x_offset > 0{
		x_offset -= 1
	}
}

x = x_anchor + x_offset*image_xscale

