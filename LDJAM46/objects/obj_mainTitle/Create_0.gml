/// @description set up strings and color

titleStr = ""
subtitleStr = "DELUXE EDITION"

versionStr = "v1.0.1"
authorStr = "2020 SYRAPT0R"

scr_particles()

audio_group_stop_all(audiogroup_default)

global.vol_mus = 0
global.vol_sfx = 0
global.vol_nrt = 0

scr_loadOptions()
scr_setGains()

// flags
if !scr_checkFlag("sawPlan") {
	if scr_checkFlag("triedExit") {
		room_goto(rm_tried_exit_noIntro)
	}
} else {
	if scr_hasSave() {
		file_delete(working_directory + "save.sl")
	}
}

if scr_checkFlag("gameEnd") {
	room_goto(rm_closed)
}