//Death check
if hp <= 0{
	audio_play_sound(sn_enemy_explosion, 0 , false)
	instance_change(obj_glooper_death,0);
}


