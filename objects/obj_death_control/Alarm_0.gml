//Player respawn
global.death = false;
instance_change(obj_player,0);
if global.checkpoint_enabled{
	hsp = 0;
	vsp = 3;
	image_alpha = 1;
	x = global.check_point_x;
	y = global.check_point_y;
}
else {
	room_restart();
}

