draw_self();

if(!instance_exists(obj_menu_restart) || !instance_exists(obj_menu_button_home)) {
    draw_set_font(fnt_menu);
    
} else {
    draw_set_font(fnt_menu_smaller);
}
draw_set_color(c_orange);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y, button_text);

draw_set_halign(fa_left);
draw_set_valign(fa_top);