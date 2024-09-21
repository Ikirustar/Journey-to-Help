if global.checkpoint_enabled == false {
	global.checkpoint_enabled = true;
	image_speed = 1
	sprite_index = spr_checkpoint_enabled
	audio_play_sound(sn_checkpoint, 0, false)
}


