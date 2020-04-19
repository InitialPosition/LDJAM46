/// @description freeze player in place

screenScroll = 1
if !fakeEndTriggered  {
	fakeEndTriggered = 1
	audio_stop_all()
	audio_play_sound(snd_vo_c1l1_4, 1, 0)
	
	alarm[0] = 600
}