if (!instance_exists(obj_basicgoblin) && !instance_exists(obj_wizardgoblin)) {
    var spawner = instance_find(obj_spawner, 0);
    if (spawner != noone) {
        spawner.round_start = true;
    }
}