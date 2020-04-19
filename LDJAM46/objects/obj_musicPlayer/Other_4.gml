/// @description change music if neccessary

switch room {
	case rm_c1l1:
	case rm_c1l2:
	case rm_c2l1:
		if !audio_is_playing(mus_c1) {
			audio_play_sound(mus_c1, 1, 1)
		}
		break
	case rm_tried_exit:
	case rm_tried_exit_noIntro:
		if !audio_is_playing(mus_eerie) {
			audio_play_sound(mus_eerie, 1, 1)
		}
		break
}
