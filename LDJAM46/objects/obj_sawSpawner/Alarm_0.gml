/// @description spawn saw

alarm[0] = sawSpeed

if active {
	var saw = instance_create_layer(x + 4, y + 4, "Instances", obj_saw)
	if currentDirection = sawDirection.DOWN {
		saw.spV = sawSpd
	} 
	if currentDirection = sawDirection.UP {
		saw.spV = -sawSpd
	}
	if currentDirection = sawDirection.LEFT {
		saw.spH = -sawSpd
	}
	if currentDirection = sawDirection.RIGHT {
		saw.spH = sawSpd
	}
}
