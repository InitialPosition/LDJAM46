/// @description spawn text

var textSpawn = instance_create_layer(0, 0, "GUI", obj_other_text)
textSpawn.str = other.str
textSpawn.alarm[0] = other.alive

with other {
	instance_destroy()
}
