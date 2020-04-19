/// @description deactivate all but touched

with other {
	var actualNode = instance_create_layer(x, y, "Instances", obj_commentaryNode)
	actualNode.sound = snd_vo_final
}

with obj_commentaryNode_trap {
	instance_destroy()
}
