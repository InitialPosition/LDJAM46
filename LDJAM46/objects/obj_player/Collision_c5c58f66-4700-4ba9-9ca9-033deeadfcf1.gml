/// @description activate node

if !other.active {
	other.image_speed = 3
	other.active = 1
	
	// stop any playing nodes
	audio_group_stop_all(audiogroup_commentary_c1)

	with obj_commentaryPlayer {
		instance_destroy()
	}
	
	audio_group_set_gain(audiogroup_default, global.vol_mus / 5, 500)
	audio_group_set_gain(audiogroup_sfx, global.vol_sfx / 5, 500)
	
	var player = instance_create_layer(0, 0, "Instances", obj_commentaryPlayer)
	player.snd = other.sound
	player.audioNode = other
}
