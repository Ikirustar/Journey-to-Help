//Decrease health
with (other){
	hp --;	
	flash = 4;	
}
//Bullet explosion
instance_destroy();
repeat(5){
	instance_create_layer(x,y,"Instances",obj_particle);	
}



