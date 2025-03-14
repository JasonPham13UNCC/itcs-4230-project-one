
if(instance_exists(obj_maincastle)) {
	instance_create_layer(x,y,"Instances",fireball);
}

attack = true
//destroy the tower if HP is 0 or less
            if (target != noone) {
                instance_destroy(target);
				state= State.moving
			}