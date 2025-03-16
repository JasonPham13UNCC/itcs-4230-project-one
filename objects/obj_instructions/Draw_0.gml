draw_set_color(c_black);

text_x = room_width / 2;
start_y = 100;
spacing = 120;

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_menu);

var instructions = [
    "FORTRESS - HOW TO PLAY",
    "START WITH A SCORE OF 100",
    "BUY & PLACE TOWERS TO DEFEND YOUR CASTLE",
    "PLAY ROUNDS AND FEND OFF MONSTERS",
    "EARN POINTS TO UPGRADE YOUR KINGDOM"
];

for (var i = 0; i < array_length(instructions); i++) {
    draw_text(text_x, start_y + (i * spacing), instructions[i]);
    draw_set_color(c_red);
    draw_text(text_x, start_y + (array_length(instructions) * spacing), "SURVIVE AS LONG AS POSSIBLE!");
    draw_set_color(c_white);
    draw_text(text_x, start_y + ((array_length(instructions) + 1) * spacing), "CAN YOU BUILD THE ULTIMATE FORTRESS?");
}