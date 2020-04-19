/// @description blink

alarm[2] = 10

if currentState == state.BLINKING {
	if a = 1 {
		a = 0
	} else {
		a = 1
	}
}
