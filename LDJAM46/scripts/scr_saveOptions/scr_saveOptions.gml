ini_open(working_directory + "options.ini")

ini_write_real("volume", "music", global.vol_mus)
ini_write_real("volume", "sfx", global.vol_sfx)
ini_write_real("volume", "narration", global.vol_nrt)

ini_close()
