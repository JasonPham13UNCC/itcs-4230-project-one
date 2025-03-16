if (round_start) {
    obj_game_manager.round_number++;
    round_start = false;
    
    var enemy_count = 1 + obj_game_manager.round_number * 2;
    var center_x = room_width / 2;
    var center_y = room_height / 2;
    var spawn_radius = max(room_width, room_height) / 2 + 50;
    
    for (var i = 0; i < enemy_count; i++) {
        var angle = random(360);
        var spawn_x = center_x + lengthdir_x(spawn_radius, angle);
        var spawn_y = center_y + lengthdir_y(spawn_radius, angle);
        
        instance_create_layer(spawn_x, spawn_y, "Instances", obj_basicgoblin);
        mob_count++;
    }
    
    if (obj_game_manager.round_number >= 4) {
        var wizards = obj_game_manager.round_number - 2; 
        for (var j = 0; j < wizards; j++) {
            var angle = random(360);
            var spawn_x = center_x + lengthdir_x(spawn_radius, angle);
            var spawn_y = center_y + lengthdir_y(spawn_radius, angle);
            
            instance_create_layer(spawn_x, spawn_y, "Instances", obj_wizardgoblin);
            mob_count++;
        }
    }
    
    if (obj_game_manager.round_number >= 6) {
        var tallgoblins = obj_game_manager.round_number - 5; 
        for (var j = 0; j < tallgoblins; j++) {
            var angle = random(360);
            var spawn_x = center_x + lengthdir_x(spawn_radius, angle);
            var spawn_y = center_y + lengthdir_y(spawn_radius, angle);
            
            instance_create_layer(spawn_x, spawn_y, "Instances", obj_tallgoblin);
            mob_count++;
        }
    }
}
if(mob_count == 0 && !popup_showing && obj_game_manager.round_number > 0) {
    var popup = instance_create_layer(display_get_width() / 2, display_get_height() / 2, "Instances", obj_popup_text);
    popup.text = "Round Over!";
    popup_showing = true;
}