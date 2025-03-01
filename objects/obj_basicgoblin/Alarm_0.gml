target.hp -= attack_damage; //reduce tower HP
attack = true
//destroy the tower if HP is 0 or less
            if (target != noone and target.hp <= 0) {
                instance_destroy(target);
				state= State.moving
			}