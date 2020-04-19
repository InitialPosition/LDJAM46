/// @description select something

if !locked {
	locked = 1
	switch selection {
		case 3:
			scr_saveOptions()
			room_goto(rm_mainMenu)
			break;
	}
}
