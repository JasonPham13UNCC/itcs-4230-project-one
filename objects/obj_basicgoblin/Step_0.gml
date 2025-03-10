if(state == State.moving) {
	sprite_index = spr_skeleton_walk
}



if(instance_exists(obj_maincastle)) {
target = instance_nearest(x,y,obj_maincastle)


	if(state== State.moving) {
	//move towards point
		move_towards_point(target.x,target.y, speed_of_movement)
	
		if(distance_to_point(target.x, target.y) <= attack_range) {
			state = State.attacking
		}
	}

	if(state == State.attacking) {
		speed=0
		sprite_index = spr_skeleton_attacking
		
		if(attack) {
			alarm[0] = attack_cooldown
			attack= false
		}
	
	}
	
	if(instance_exists(target)) {
		state=State.moving
		target = instance_nearest(x,y,obj_maincastle)
	
	}

	

}
//attack_timer is used to count down between attacks.
//if attack_timer > 0, the goblin waits before attacking again.
//when attack_timer <= 0, the goblin attacks and resets attack_timer to attack_cooldown.
//every frame, we decrease attack_timer so that the goblin can attack again after a set time.