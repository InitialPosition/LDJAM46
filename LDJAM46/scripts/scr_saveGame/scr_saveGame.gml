
if scr_hasSave() {
	file_delete(working_directory + "save.sl")
}

f = file_text_open_write(working_directory + "save.sl")


file_text_write_real(f, room)
file_text_writeln(f)
file_text_write_real(f, obj_savedStats.savedX)
file_text_writeln(f)
file_text_write_real(f, obj_savedStats.savedY)

file_text_close(f)
