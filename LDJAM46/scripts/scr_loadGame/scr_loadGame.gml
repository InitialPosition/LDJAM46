
var destRoom, xx, yy
f = file_text_open_read(working_directory + "save.sl")

destRoom = file_text_read_real(f)
file_text_readln(f)
xx = file_text_read_real(f)
file_text_readln(f)
yy = file_text_read_real(f)

file_text_close(f)

var stats = instance_create_layer(0, 0, "Instances", obj_savedStats)
stats.savedX = xx
stats.savedY = yy

room_goto(destRoom)
show_debug_message("Load spawned savedStats instance")