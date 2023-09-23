//Movement
//Default controls
arrow_left = keyboard_check(vk_left); 
arrow_right = keyboard_check(vk_right);
arrow_up = keyboard_check(vk_up);
arrow_down = keyboard_check(vk_down);
shift = keyboard_check(vk_shift);
space_bar = keyboard_check_pressed(vk_space)
arrow_up_jump = keyboard_check_pressed(vk_up);
keyboard_Z = keyboard_check_pressed(ord("Z"));
keyboard_X = keyboard_check_pressed(ord("X"));

var movement = arrow_right - arrow_left;
hsp = movement * movesp
vsp += grv;

vertical_direction = arrow_up;

//jump
if place_meeting(x,y+1,obj_collision) and arrow_up_jump{
	vsp -= 9.3;	
}

//Horizontal collision
if place_meeting(x+hsp,y,obj_collision){
	while !place_meeting(x+sign(hsp),y,obj_collision){
		x += sign(hsp)	
	}
	hsp = 0;
}

//Vertical collision
if place_meeting(x,y+vsp,obj_collision){
	while !place_meeting(x,y+sign(vsp),obj_collision){
		y += sign(vsp)
	}
	vsp = 0;
}

//sprite switching
if !place_meeting(x,y+1,obj_collision){
	if sprite_index != spr_player_climb{
		sprite_index = spr_player_jump;	
	}
	if sprite_index == spr_player_jump{
		if sign(vsp) > 0 {image_index = 0} else {image_index = 1}	
	}
} 
else{
	if hsp == 0{
		sprite_index = spr_player;
	}
	else{
		sprite_index = spr_player_walk;	
	}
}

if hsp != 0 image_xscale = sign(hsp);

//shooting
if image_xscale == 1{
	global.player_direction = 0;	
}
else if image_xscale = -1{
	global.player_direction = 180;	
}

if space_bar{
	instance_create_layer(x,y,"Instances",obj_bullet);	
}

if !place_meeting(x,y,obj_ladder){
	on_ladder = false;	
} 

if !on_ladder{
	grv = 0.4;	
}

//Death check
if global.death{
	instance_change(obj_player_death,0);
	alarm[0] = 40;
}

x += hsp;
y += vsp;


