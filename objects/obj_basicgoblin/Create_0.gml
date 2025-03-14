// this way the movement mechanics are not checked every frame, helps with lag
attack_timer = 0;
target = noone;


attack = true

enum State {
    standing,
	moving,
	attacking,
	dying,
}


state = State.moving

health = health + 2 * obj_game_manager.round_number;