hsp = image_xscale * -2.5;
vsp += grv;

//Death check
if hp <= 0{
	audio_play_sound(sn_enemy_explosion, 0 , false)
	instance_change(obj_trashguy_death,0);
}

//Horizontal collision
if place_meeting(x+hsp,y,obj_collision){
	while !place_meeting(x+sign(hsp),y,obj_collision){
		x += sign(hsp)	
	}
	image_xscale = sign(hsp);
}

//Vertical collision
if place_meeting(x,y+vsp,obj_collision){
	while !place_meeting(x,y+sign(vsp),obj_collision){
		y += sign(vsp)
	}
	vsp = 0;
}

x += hsp;
y += vsp;


