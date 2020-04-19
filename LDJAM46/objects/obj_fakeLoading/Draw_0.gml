/// @description draw loading text

draw_set_halign(fa_right)
draw_set_font(fnt_titles_1)

draw_text(room_width - 20, room_height - 20, loadStr)

draw_set_halign(fa_center)
draw_text(room_width / 2, room_height / 2, "PLEASE DO NOT TURN OFF THE GAME")