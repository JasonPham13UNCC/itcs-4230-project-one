// obj_popup_text Draw Event
draw_set_alpha(alpha);
draw_set_color(c_white);

// Center the text
var text_width = string_width(text);
var text_height = string_height(text);

draw_text(x - text_width / 2, y - text_height / 2, text);

draw_set_alpha(1);
