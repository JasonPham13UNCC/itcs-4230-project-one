if (global.game_over) {
    var room_center_x = room_width / 2;
    draw_set_font(fnt_menu);
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_set_color(c_red);
    draw_text(room_center_x, 350, "GAME OVER");

    draw_set_color(c_white);
    draw_text(room_center_x, 425, "Final Round: " + string(round_number));
}