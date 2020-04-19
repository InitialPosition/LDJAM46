/// @description activate if in proximity

camX1 = obj_camera.x - 160
camX2 = camX1 + 320

camY1 = obj_camera.y - 90
camY2 = camY1 + 180

if x > camX1 && x < camX2 && y > camY1 && y < camY2 {
	active = 1
} else {
	active = 0
}
