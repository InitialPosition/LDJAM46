/// @description Move camera

if currentCamMode = camMode.SCROLL {
	if (instance_exists(camTarget)) {
		x = lerp(x, camTarget.x + camTarget.facingCamOffset, camSmoothness);
		y = lerp(y, camTarget.y, camSmoothness);
	}
}

if currentCamMode = camMode.SCREEN {
	if instance_exists(camTarget) {
		var currentScreenX = floor(camTarget.x / 320)
		var currentScreenY = floor(camTarget.y / 180)
		
		var currentTargetX = (currentScreenX * 320) + 160
		var currentTargetY = (currentScreenY * 180) + 90
		
		if distance_to_point(currentTargetX, currentTargetY) > 10 {
			if instance_exists(obj_player) {
				obj_player.screenScroll = 1
			}
		} else {
			if instance_exists(obj_player) {
				obj_player.screenScroll = 0
			}
		}
		
		x = lerp(x, currentTargetX, camSmoothness)
		y = lerp(y, currentTargetY, camSmoothness)
	}
}

if (shake) {
	x += random_range(-shakeIntensity, shakeIntensity);
	y += random_range(-shakeIntensity, shakeIntensity);
}
