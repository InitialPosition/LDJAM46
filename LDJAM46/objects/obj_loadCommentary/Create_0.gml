/// @description load commentary and destroy

if audio_group_is_loaded(audiogroup_commentary_c1) {
	audio_group_unload(audiogroup_commentary_c1)
}

switch room {
	case rm_c1l1:
		audio_group_load(audiogroup_commentary_c1)
		break;
}

instance_destroy()
