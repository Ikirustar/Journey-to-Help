//Decrease health
with (other){
	hp --;	
	flash = 4;	
	audio_play_sound(sn_enemy_hit, 0, false);
}
//Bullet explosion
instance_destroy();
repeat(5){
	instance_create_layer(x,y,"Instances",obj_particle);	
}



