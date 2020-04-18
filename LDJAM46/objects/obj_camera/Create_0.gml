/// @description Set up camera

camera_set_view_target(view_camera[0], obj_camera);
camera_set_view_border(view_camera[0], view_wport[0] / 2, view_hport[0] / 2);

enum camMode {
	SCROLL,
	SCREEN
}

currentCamMode = camMode.SCREEN
origSmoothness = 0.1;
camSmoothness = origSmoothness;

camTarget = obj_player;

shake = 0;
shakeIntensity = 5;
