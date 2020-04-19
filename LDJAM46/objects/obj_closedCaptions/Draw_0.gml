/// @description 
draw_set_halign(fa_center)

draw_set_font(fnt_titles_1)
draw_text(room_width / 2, room_height / 2 - 46, titleStr)
draw_text(room_width / 2, room_height / 2 - 26, subtitleStr)

draw_text(room_width / 2, room_height / 2 + 20, credStr)

draw_set_font(fnt_normalText)
draw_set_halign(fa_right)
draw_text_color(room_width - 20, room_height - 20, hintStr, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 0.5)
