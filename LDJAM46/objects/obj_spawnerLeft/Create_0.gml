/// @description change spawner direction

var spawner = instance_nearest(x, y, obj_sawSpawner)
spawner.currentDirection = sawDirection.LEFT

instance_destroy()
