/// @description post sound handling

audio_group_set_gain(audiogroup_default, global.vol_mus, 500)
audio_group_set_gain(audiogroup_sfx, global.vol_sfx, 500)
		
with audioNode {
	sprite_index = spr_commentary_inactive
	image_speed = 1
}

// c2 load
if snd == snd_vo_c1l2_1 {
	audio_stop_all()
	audio_group_unload(audiogroup_commentary_c1)
	
	room_goto(rm_load_c2)
}

// detect kick
switch snd {
	case snd_vo_detect:
		room_goto(rm_mainMenu)
		scr_saveGame()
					
		with obj_savedStats {
			instance_destroy()
		}
		
		with obj_toMainMenu {
			instance_destroy()
		}
					
		audio_group_unload(audiogroup_commentary_c1)
		audio_group_unload(audiogroup_commentary_c2)
		break
	case snd_vo_final:
		room_goto(rm_closed)
		scr_writeFlag("gameEnd")
					
		with obj_savedStats {
			instance_destroy()
		}
		
		with obj_toMainMenu {
			instance_destroy()
		}
					
		audio_group_unload(audiogroup_commentary_c1)
		audio_group_unload(audiogroup_commentary_c2)
		audio_group_unload(audiogroup_sfx)
}
