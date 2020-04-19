/// @description wait for start

if !started {
	var nearestFlag = instance_nearest(x, y, obj_commentaryNode_instadestroy)
	if distance_to_object(nearestFlag) > 300 {
		started = 1
		alarm[0] = 500
	}
}
