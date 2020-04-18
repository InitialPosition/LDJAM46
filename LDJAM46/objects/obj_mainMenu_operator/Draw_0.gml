/// @description draw menu

draw_set_font(fnt_titles_1)
draw_set_halign(fa_center)

var i
for (i = 0; i < menuItemCount; i++) {
	draw_text_color(room_width / 2, room_height / 2 + (i * 16), options[i], col[i], col[i], col[i], col[i], 1)
}
