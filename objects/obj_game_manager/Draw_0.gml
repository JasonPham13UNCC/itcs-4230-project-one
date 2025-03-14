if (global.game_over) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_set_color(c_red);
    
    // Draw "Game Over" message near the top
    draw_text(room_width / 2, 50, "GAME OVER");

    // Draw final score a bit below the "Game Over" message
    draw_set_color(c_white);
    draw_text(room_width / 2, 100, "Final Score: " + string(score));
}