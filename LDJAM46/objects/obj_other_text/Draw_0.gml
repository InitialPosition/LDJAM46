/// @description draw text

draw_set_halign(fa_center)
draw_set_font(fnt_normalText)

draw_set_alpha(0.3)
draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, 0)
draw_set_alpha(1)

draw_text_color(obj_camera.x + random_range(-160, 160), obj_camera.y + random_range(-90, 90), str, c_red, c_red, c_red, c_red, 0.2)
draw_text_color(obj_camera.x + random_range(-160, 160), obj_camera.y + random_range(-90, 90), str, c_aqua, c_aqua, c_aqua, c_aqua, 0.2)

draw_text(obj_camera.x, obj_camera.y - 20, str)
