///@description check whether a flag is unlocked
///scr_checkFlag(name)

var searchName = argument0

// no file, no achievements
if !file_exists(working_directory + "flag.sl") {
	return false
}

// check if the achievement name is saved
var currentLine

f = file_text_open_read(working_directory + "flag.sl")
while !file_text_eof(f) {
	currentLine = file_text_read_string(f)
	
	if currentLine == searchName {
		file_text_close(f)
		return true
	}
	
	file_text_readln(f)
}

file_text_close(f)
return false
