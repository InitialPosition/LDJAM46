ini_open(working_directory + "options.ini")

global.vol_mus = ini_read_real("volume", "music", 0.25)
global.vol_sfx = ini_read_real("volume", "sfx", 0.5)
global.vol_nrt = ini_read_real("volume", "narration", 0.5)

ini_close()
