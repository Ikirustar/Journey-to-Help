//Spawn Glooper

if enemy_respawn{
	instance_create_layer(x,y,"instances",obj_glooper);		
	enemy_respawn = false;
} 

else if global.death and enemy_death{
	alarm[0] = 80;
}
