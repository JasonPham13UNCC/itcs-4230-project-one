if(instance_exists(obj_maincastle)) {
var target = instance_nearest(x,y,obj_maincastle)


	if(distance_to_point(target.x, target.y) > attack_range) {
		//move towards point
		move_towards_point(target.x,target.y, speed)
	
	} else {
        //stop moving when in attack range
        move_towards_point(target.x, target.y, 0);

        //attacking the tower
        if (attack_timer <= 0) {
            target.hp -= attack_damage; //reduce tower HP
            attack_timer = attack_cooldown; //reset attack cooldown

            //destroy the tower if HP is 0 or less
            if (target.hp <= 0) {
                instance_destroy(target);
				 //look for the next closest tower
                if (instance_exists(obj_maincastle)) {
                    var target = instance_nearest(x,y,obj_maincastle)
					move_towards_point(target.x,target.y, speed);
                }
            }
        }
    }

    //decrease the attack timer
    attack_timer -= 1;
}
//attack_timer is used to count down between attacks.
//if attack_timer > 0, the goblin waits before attacking again.
//when attack_timer <= 0, the goblin attacks and resets attack_timer to attack_cooldown.
//every frame, we decrease attack_timer so that the goblin can attack again after a set time.