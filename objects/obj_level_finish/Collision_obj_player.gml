if global.doorOpen == true{
	room_goto(rm_level_finish);
	global.doorOpen = false;
} 
with obj_timer{
	instance_destroy();	
}