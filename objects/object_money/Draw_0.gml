if(instance_exists(obj_maincastle)) {
    draw_set_valign(fa_right)
    draw_text(200, 90, "Goblin ears: " + string(score)+ " Round:"+string(obj_game_manager.round_number))
}