vsp += grv;

//Vertical collision
if place_meeting(x,y+vsp,obj_collision){
	while !place_meeting(x,y+sign(vsp),obj_collision){
		y += sign(vsp)
	}
	image_index = 0;
	vsp = 0;
}

y += vsp;

//Death check
if hp <= 0{
	audio_play_sound(sn_enemy_explosion, 0 , false)
	instance_change(obj_jumpguy_death,0);	
}
