/// @description load commentary and destroy

switch room {
	case rm_c1l1:
	case rm_c1l2:
	case rm_load_c2:
		if !audio_group_is_loaded(audiogroup_commentary_c1) {
			audio_group_load(audiogroup_commentary_c1)
		}
		break;
		
	case rm_c2l1:
		if audio_group_is_loaded(audiogroup_commentary_c1) {
			audio_group_unload(audiogroup_commentary_c1)
		}
		
		if !audio_group_is_loaded(audiogroup_commentary_c2) {
			audio_group_load(audiogroup_commentary_c2)
		}
		break;
}

show_debug_message("SOUND LOADING DONE")

instance_destroy()
