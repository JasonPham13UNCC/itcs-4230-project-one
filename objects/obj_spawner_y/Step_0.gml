if (round_start) {
	round_number ++;
    round_start = false;
    
    var enemy_count = 1+ round_number * 2;

    for (var i = 0; i < enemy_count; i++) {
        var spawn_y = irandom_range(sprite_yoffset, room_height - 1);
        instance_create_layer(x, spawn_y, "Instances", obj_basicgoblin);
    }

    if (round_number >= 4) {
        var boss_count = round_number - 2;
        for (var j = 0; j < boss_count; j++) {
            var spawn_y = irandom_range(sprite_yoffset, room_height - 1);
            instance_create_layer(x, spawn_y, "Instances", obj_wizardgoblin);
        }
    }

    alarm[0] = 60 * 30;
}
