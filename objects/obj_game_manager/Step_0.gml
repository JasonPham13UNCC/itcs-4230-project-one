if (!instance_exists(obj_basicgoblin) && !instance_exists(obj_wizardgoblin)) {
    round_number += 1;

 
    var spawner = instance_find(obj_spawner_x, 0);
    if (spawner != noone) {
        spawner.round_start = true;
    }
}