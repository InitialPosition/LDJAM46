/// @description decrease volume

switch selection {
	case 0:
		if global.vol_mus > 0 {
			global.vol_mus -= 0.05
		}
		break
	case 1:
		if global.vol_sfx > 0 {
			global.vol_sfx -= 0.05
		}
		break
	case 2:
		if global.vol_nrt > 0 {
			global.vol_nrt -= 0.05
		}
		break
}

audio_group_set_gain(audiogroup_default, global.vol_mus, 0)
audio_group_set_gain(audiogroup_commentary_c1, global.vol_nrt, 0)

baseOptions[0] = "MUSIC " + string(round(global.vol_mus * 100)) + "%"
baseOptions[1] = "SFX " + string(round(global.vol_sfx * 100)) + "%"
baseOptions[2] = "NARRATION " + string(round(global.vol_nrt * 100)) + "%"

// initially select selected item
var i
for (i = 0; i < menuItemCount; i++) {
	if selection == i {
		options[i] = selectorLeft + " " + baseOptions[i] + " " + selectorRight
	} else {
		options[i] = baseOptions[i]
	}
}