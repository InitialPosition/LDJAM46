/// @description set up strings and color

titleStr = "[ CLOSED ]"
subtitleStr = "THANKS FOR PLAYING"

credStr = "Created by SYRAPT0R for LDJAM46"

hintStr = "Press DEL to reset the game"

if !audio_is_playing(mus_eerie) {
	audio_play_sound(mus_eerie, 1, 1)
}