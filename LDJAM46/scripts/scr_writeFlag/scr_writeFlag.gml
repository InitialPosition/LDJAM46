///@description unlocks a flag
///scr_writeFlag(name)

// parse arguments
var internalName = argument0

// abort if flag is already unlocked
if scr_checkFlag(internalName) {
	exit
}

// save new flag in file
f = file_text_open_append(working_directory + "flag.sl")
file_text_write_string(f, internalName)
file_text_writeln(f)
file_text_close(f)
