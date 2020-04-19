/// @description player setup

baseCamOffset = 30				// amount of pixels camera looks ahead in scroll mode
facingCamOffset = 0				// actual applied offset

// keys
left = vk_left					// move left
right = vk_right				// move right
jump = vk_space					// jump

// constants
acceleration = 0.2				// acceleration per frame
maxHspeed = 2					// maximal horizontal speed
maxVspeed = 10					// maximal vertical speed
stopFrct = 1.5					// stopping friction
stopThres = 0.1					// stopping threshold (when decelerating, moving slower than this wil stop you)
jumpForce = -4					// initial acceleration from jumping
precJumpMod = 1.3				// precise jump modifier
baseGravity = 0.2				// default gravity force
currentGravity = baseGravity	// currently applied gravity

okToDestroy = 0					// whether its okay to destroy the player instance (i.e. level changes)

screenScroll = 0				// whether logic is paused due to screen scroll

onGround = 0					// whether the player is on solid ground
orbJump = 0						// whether player can orb jump right now

xx = 0							//horizontal movement vector
yy = 0							// vertical movement vector

// create a stat handler
if !instance_exists(obj_savedStats) {
	instance_create_layer(0, 0, "Instances", obj_savedStats)
}

if !instance_exists(obj_toMainMenu) {
	instance_create_layer(0, 0, "Instances", obj_toMainMenu)
}

if obj_savedStats.savedX == 0 && obj_savedStats.savedY == 0 {
	obj_savedStats.savedX = x
	obj_savedStats.savedY = y
} else {
	x = obj_savedStats.savedX
	y = obj_savedStats.savedY
}

// create a camera if none exists
if !instance_exists(obj_camera) {
	instance_create_layer(x + facingCamOffset, y, "Instances", obj_camera)
}

if !audio_is_playing(ost) {
	audio_play_sound(ost, 1, 1)
}
