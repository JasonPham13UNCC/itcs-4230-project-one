// obj_popup_text Draw Event
draw_set_alpha(alpha);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Center the text
//var text_width = string_width(text);
//var text_height = string_height(text);

var text_x = (room_width / 2);
var text_y = (room_height / 2) + 80;

//draw_text(x - text_width / 2, y - text_height / 2, text);

draw_text(text_x, text_y, text);

draw_set_alpha(1);

draw_set_halign(fa_left)
draw_set_valign(fa_top);
draw_set_color(c_orange);