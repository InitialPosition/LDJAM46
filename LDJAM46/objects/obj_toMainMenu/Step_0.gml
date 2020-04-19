/// @description check for escape

if keyboard_check(vk_escape) {
	exitTimer++
	
	if exitTimer > 120 {
		if instance_exists(obj_player) {
			if obj_player.canExit {
				room_goto(rm_mainMenu)
				scr_saveGame()
				
				with obj_savedStats {
					instance_destroy()
				}
				
				audio_group_unload(audiogroup_commentary_c1)
				audio_group_unload(audiogroup_commentary_c2)
				
				instance_destroy()
			} else {
				room_goto(rm_tried_exit)
			
				scr_writeFlag("triedExit")
				
				obj_savedStats.savedX = 0
				obj_savedStats.savedY = 0
				
				audio_group_unload(audiogroup_commentary_c1)
				audio_stop_all()
				
				instance_destroy()
			}
		}
	}
} else {
	exitTimer = 0
}

a = exitTimer / 120
