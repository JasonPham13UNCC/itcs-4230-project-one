y = ystart + 4;
alarm[0] = 10;

if (!instance_exists(obj_basicgoblin) && !instance_exists(obj_wizardgoblin) && !instance_exists(obj_tallgoblin)) {
    var spawner = instance_find(obj_spawner, 0);
    if (spawner != noone) {
        spawner.round_start = true;
        spawner.popup_showing = false;
    }
}