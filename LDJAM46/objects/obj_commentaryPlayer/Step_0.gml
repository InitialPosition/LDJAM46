/// @description destroy after sound finished

if playing {
	if !audio_is_playing(snd) {
		instance_destroy()
		
		audio_group_set_gain(audiogroup_default, 1, 500)
		
		with audioNode {
			active = 0
			sprite_index = spr_commentary_inactive
			image_speed = 1
		}
	}
}
