vsp += grv;
hsp = -2;

if hp <= 0{
	audio_play_sound(sn_enemy_explosion, 0 , false)
	instance_destroy();	
}

//Vertical collision
if place_meeting(x,y+vsp,obj_collision){
	while !place_meeting(x,y+vsp,obj_collision){
		y += sign(vsp)
	}
	vsp = 0;
}

//Horizontal collision
if place_meeting(x+hsp,y,obj_collision){
	while !place_meeting(x+hsp,y,obj_collision){
		x -= 1
	}
	hsp = 0;
	if place_meeting(x,y+1,obj_collision){
		vsp -= 10;
	}
}

//Respawn
if global.death{
	alarm[0] = 5;
}

y += vsp;
x += hsp;


