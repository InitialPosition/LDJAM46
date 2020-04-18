/// @description Anti Stuck Code

if place_meeting(x + xx, y + yy, obj_wall) {
	if xx > 0 {
		x -= 5;
	}
	if xx < 0 {
		x += 5;
	}
	if yy > 0 {
		y -= 5;
	}
	if yy < 0 {
		y += 5;
	}
}
