/// @description snap trap

instance_activate_object(obj_commentaryNode_trap)
instance_activate_object(obj_wall_final)

audio_stop_all()
audio_play_sound(snd_popup, 1, 0)

with other {
	instance_destroy()
}
