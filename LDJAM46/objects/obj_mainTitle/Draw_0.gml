/// @description 
draw_set_halign(fa_center)

draw_set_font(fnt_titles_1)
draw_text(room_width / 2, room_height / 2 - 46, titleStr)

draw_set_halign(fa_left)
draw_text(10, room_height - 20, versionStr)

draw_set_halign(fa_right)
draw_text(room_width - 10, room_height - 20, authorStr)


draw_set_halign(fa_center)
draw_text(room_width / 2, room_height / 2 - 32, subtitleStr)
