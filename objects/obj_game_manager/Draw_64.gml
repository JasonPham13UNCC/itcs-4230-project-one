if (global.game_over) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_set_color(c_red);
    
    draw_text(room_width / 2, 150, "GAME OVER");

    draw_set_color(c_white);
    draw_text(room_width / 2, 225, "Final Score: " + string(score));
    draw_text(room_width / 2, 300, "Final Wave: " + string(round_number));
    draw_set_halign(fa_top);
    draw_set_valign(fa_left);
}