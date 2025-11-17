event_inherited();

			#region mega kick ability
			
if ability_key[player_num] && ability_charge > ability_use_threshold{
	
	ability_active = true

}else{

	ability_active = false

}

//hold button to have big kick active
if ability_active{

	kick_power = 5 
	if hit_ball{//only cost charge if hitting ball
		ability_charge -= ability_use_threshold
	}

}else{
	
	kick_power = 1

}

			#endregion