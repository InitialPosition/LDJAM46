/// @description check for escape

if keyboard_check(vk_escape) {
	exitTimer++
	
	if exitTimer > 120 {
		room_goto(rm_mainMenu)
		scr_saveGame()
		
		with obj_savedStats {
			instance_destroy()
		}
		
		audio_group_unload(audiogroup_commentary_c1)
		
		instance_destroy()
	}
} else {
	exitTimer = 0
}

a = exitTimer / 120