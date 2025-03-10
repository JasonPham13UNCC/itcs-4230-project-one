if (round_start) {
    round_start = false;
    
    var enemy_count = 1+ round_number * 2;
    
    for (var i = 0; i < enemy_count; i++) {
        var spawn_x = irandom_range(sprite_xoffset, room_width - 1);
        instance_create_layer(spawn_x, y, "Instances", obj_basicgoblin);
    }

    if (round_number >= 4) {
        var wizard_count = round_number - 2; 
        for (var j = 0; j < wizard_count; j++) {
            var spawn_x = irandom_range(sprite_xoffset, room_width - 1);
            instance_create_layer(spawn_x, y, "Instances", obj_wizardgoblin);
        }
    }

    alarm[0] = 60 * 30;
}
