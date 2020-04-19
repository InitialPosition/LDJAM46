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

fakeEndTriggered = 0			// whether the first fake end (corrupt level) has triggered
canExit = 1						// whether holding escape leads to the main menu

okToDestroy = 0					// whether its okay to destroy the player instance (i.e. level changes)

screenScroll = 0				// whether logic is paused due to screen scroll

onGround = 0					// whether the player is on solid ground
orbJump = 0						// whether player can orb jump right now

xx = 0							//horizontal movement vector
yy = 0							// vertical movement vector

// create a stat handler
if !instance_exists(obj_savedStats) {
	instance_create_layer(0, 0, "Instances", obj_savedStats)
} else {
	show_debug_message("Player skipped savedStats instance")
}

if !instance_exists(obj_toMainMenu) && room != rm_tried_exit {
	instance_create_layer(0, 0, "Instances", obj_toMainMenu)
}

if obj_savedStats.savedX == 0 && obj_savedStats.savedY == 0 {
	obj_savedStats.savedX = x
	obj_savedStats.savedY = y
} else {
	x = obj_savedStats.savedX
	y = obj_savedStats.savedY
}

// load sfx
if !audio_group_is_loaded(audiogroup_sfx) {
	audio_group_load(audiogroup_sfx)
}

// create a camera if none exists
if !instance_exists(obj_camera) {
	instance_create_layer(x + facingCamOffset, y, "Instances", obj_camera)
}

if !instance_exists(obj_musicPlayer) {
	instance_create_layer(0, 0, "Instances", obj_musicPlayer)
}
