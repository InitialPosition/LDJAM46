/// @description select something

if !locked {
	locked = 1
	switch selection {
		case 0:
			if scr_hasSave() {
				file_delete(working_directory + "save.sl")
			}
			
			if instance_exists(obj_savedStats) {
				obj_savedStats.savedX = 0
				obj_savedStats.savedY = 0
			}
			
			room_goto(rm_c1l1)
			break;
		case 1:
			scr_loadGame()
			break;
		case 2:
			room_goto(rm_options)
			break;
		case 3:
			game_end()
			break;
	}
}
