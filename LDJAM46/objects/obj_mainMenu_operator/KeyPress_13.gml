/// @description select something

if !locked {
	locked = 1
	switch selection {
		case 0:
			room_goto(rm_c1l1)
			break;
		case 1:
			// TODO load game
			break;
		case 2:
			// TODO options
			break;
		case 3:
			game_end()
			break;
	}
}
