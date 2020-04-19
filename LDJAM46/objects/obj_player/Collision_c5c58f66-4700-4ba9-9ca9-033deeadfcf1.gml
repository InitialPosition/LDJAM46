/// @description activate node

if !other.active {
	other.image_speed = 3
	other.active = 1
	
	audio_group_set_gain(audiogroup_default, global.vol_mus / 3, 500)
	
	var player = instance_create_layer(0, 0, "Instances", obj_commentaryPlayer)
	player.snd = other.sound
	player.audioNode = other
}
