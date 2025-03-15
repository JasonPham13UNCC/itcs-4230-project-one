 // Check if the main castle instance is gone
if (!instance_exists(obj_maincastle)) {
    global.game_over = true;
}

if (keyboard_check(vk_alt) && keyboard_check_pressed(ord("M"))) {
    score += 100;
}

if (keyboard_check(vk_alt) && keyboard_check_pressed(ord("N"))) {
    round_number += 10;
}

if (keyboard_check(vk_alt) && keyboard_check_pressed(ord("D"))) {
    instance_destroy(obj_maincastle);
}