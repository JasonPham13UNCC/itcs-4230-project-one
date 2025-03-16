draw_set_valign(fa_middle);
draw_set_halign(fa_left);
draw_set_color(c_orange);
if(instance_exists(obj_maincastle)) {
    draw_text(210, 65, "Goblin ears:" + string(score)+ " Round:"+string(obj_game_manager.round_number) + " HP:" + string(obj_maincastle.hp));
}