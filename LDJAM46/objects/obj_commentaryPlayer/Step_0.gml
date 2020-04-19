/// @description destroy after sound finished

if playing {
	if !audio_is_playing(snd) {
		instance_destroy()
	}
}
