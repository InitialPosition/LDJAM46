/// @description player logic

// disable everything on scroll
if !screenScroll {
// get inputs
if keyboard_check(left) {
	if xx > 0 {
		xx /= stopFrct
		
		if xx < stopThres {
			xx = 0
		}
	}
	
	xx -= acceleration
	facingCamOffset = -baseCamOffset
}
if keyboard_check(right) {
	if xx < 0 {
		xx /= stopFrct
		
		if xx > -stopThres {
			xx = 0
		}
	}
	
	xx += acceleration
	facingCamOffset = baseCamOffset
}
if (!keyboard_check(left) && !keyboard_check(right)) || (keyboard_check(left) && keyboard_check(right)) {
	xx /= stopFrct
	if xx > 0 {
		if xx < stopThres {
			xx = 0
		}
	}
	if xx < 0 {
		if xx > -stopThres {
			xx = 0
		}
	}
}

// jumping
if keyboard_check_pressed(jump) {
	if onGround {
		yy = jumpForce
	}
}

// precise jumping
if !keyboard_check(jump) {
	if !onGround {
		if yy < 0 {
			yy /= precJumpMod
		}
	}
}

// gravity
if !place_meeting(x, y + 1, obj_wall) {
	onGround = 0;
	currentGravity = baseGravity;
}

yy += currentGravity

// wall collision
if place_meeting(x + xx, y, obj_wall) {
	if xx > 0 {
		move_contact_all(0, xx)
	}
	if xx < 0 {
		move_contact_all(180, abs(xx))
	}
	
	xx = 0
}

if place_meeting(x, y + yy, obj_wall) {
	if yy > 0 {
		move_contact_all(270, yy)
		onGround = 1
		currentGravity = 0
	}
	if yy < 0 {
		move_contact_all(90, abs(yy))
	}
	
	yy = 0
}

// speed cap
if xx > maxHspeed {
	xx = maxHspeed
}
if xx < -maxHspeed {
	xx = -maxHspeed
}
if yy > maxVspeed {
	yy = maxVspeed
}
if yy < -maxVspeed {
	yy = -maxVspeed
}

// apply movement vector
x += xx
y += yy
}
