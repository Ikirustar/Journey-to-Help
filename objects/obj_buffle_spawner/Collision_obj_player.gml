if !touched_player{
	instance_create_layer(x+200,y,"instances",obj_buffle);	
}

with self{
	touched_player = true;	
}

