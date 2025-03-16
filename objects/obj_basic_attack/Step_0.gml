if(obj_spawner.mob_count == 0 && !obj_spawner.popup_showing && obj_game_manager.round_number > 0) {
    instance_destroy(self);
}