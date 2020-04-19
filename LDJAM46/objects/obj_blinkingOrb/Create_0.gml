/// @description setup

enum state {
	INVISIBLE,
	BLINKING,
	DEAD
}

currentState = state.INVISIBLE

blinkSpeed = 20
deathTimer = 30
started = 0
a = 0

alarm[2] = 10
