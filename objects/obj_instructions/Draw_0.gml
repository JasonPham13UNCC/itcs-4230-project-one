draw_set_color(c_black);

text_x = room_width / 2;
start_y = 100;
spacing = 120;

draw_set_color(c_red);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_menu);

var instructions = [
    "FORTRESS - HOW TO PLAY",
    "START WITH A 100 GOBLIN EARS YOUR CURRENCY",
    "BUY & PLACE TOWERS TO DEFEND YOUR CASTLE",
    "PLAY ROUNDS AND FEND OFF MONSTERS",
    "EARN POINTS TO UPGRADE YOUR KINGDOM",
    "SURVIVE AS LONG AS POSSIBLE!",
    "CAN YOU BUILD THE ULTIMATE FORTRESS?"
];

for (var i = 0; i < array_length(instructions); i++) {
    draw_text(text_x, start_y + (i * spacing), instructions[i]);
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);