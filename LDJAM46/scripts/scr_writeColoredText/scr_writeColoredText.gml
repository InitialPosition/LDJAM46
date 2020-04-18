/// scr_writeColoredText(string, highlightColor, textColor, x, y, a)

var text = argument0
var colorH = argument1
var colorT = argument2
var xx = argument3
var yy = argument4
var alpha = argument5

draw_text_color(xx, yy + 1, text, colorH, colorH, colorH, colorH, alpha)
draw_text_color(xx, yy, text, colorT, colorT, colorT, colorT, alpha)
