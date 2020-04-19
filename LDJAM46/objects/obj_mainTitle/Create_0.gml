/// @description set up strings and color

titleStr = "In the valley of souls"
subtitleStr = "DELUXE EDITION"

versionStr = "1.0.0"
authorStr = "(c) SYRAPT0R"

scr_particles()

audio_group_stop_all(audiogroup_default)

global.vol_mus = 0
global.vol_sfx = 0
global.vol_nrt = 0

scr_loadOptions()
audio_group_set_gain(audiogroup_default, global.vol_mus, 0)
audio_group_set_gain(audiogroup_commentary_c1, global.vol_nrt, 0)