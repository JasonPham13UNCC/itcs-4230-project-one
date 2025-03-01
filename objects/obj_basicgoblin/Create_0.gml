// this way the movement mechanics are not checked every frame, helps with lag
attack_timer = 0;
target = noone;


attack = true

enum State {
	moving,
	attacking,
	dying,
}


state = State.moving