/// @description save game

obj_savedStats.savedX = x
obj_savedStats.savedY = y

audio_play_sound(snd_save, 2, 0)

with other {
	var indicator = instance_nearest(x, y, obj_saveIndicator)
	indicator.sprite_index = spr_saveIndicator
	with indicator {
		part_emitter_stream(system, emit, global.part_savepoint, 1)
	}
	
	instance_destroy()
}

scr_saveGame()
