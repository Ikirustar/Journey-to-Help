with (self){
	if arrow_up{
		vsp = 0;
		grv = 0;
		y -= 4;	
		onladder = true;
		sprite_index = spr_player_climb;
	} 
	else{
		sprite_index = spr_player_jump;	
	}
}


