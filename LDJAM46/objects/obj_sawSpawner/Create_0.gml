/// @description prime loop

sawSpeed = 60

enum sawDirection {
	UP,
	DOWN,
	LEFT,
	RIGHT
}

currentDirection = sawDirection.DOWN
sawSpd = 1

alarm[0] = sawSpeed

active = 0