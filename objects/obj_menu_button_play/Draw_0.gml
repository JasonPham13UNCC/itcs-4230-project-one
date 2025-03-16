draw_self();

draw_set_font(fnt_menu);
draw_set_color(c_orange);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(room == rm_menu) {
    draw_text(x, y, button_text);
} else if(room == rm_instructions) {
    draw_text(x, y, "Start");
}


draw_set_halign(fa_left);
draw_set_valign(fa_top);