/// @description set up

loadStr = "LOADING..."
loadTimer = 120

alarm[0] = loadTimer

switch room {
	case rm_load_c2:
		audio_group_set_gain(audiogroup_default, global.vol_mus / 5, 0)
		break
}
