/// @description 
if x < room_width / 2 {
	var textSpawn = instance_create_layer(0, 0, "GUI", obj_other_text)
	textSpawn.str = other.str
	textSpawn.alarm[0] = alive
	
	if room == rm_tried_exit {
		x = 1077
	} else {		
		instance_destroy()
	}
}
