

// gets health from foe and subtracts that amount and if they die remove them.
other.health -= damage

if(other.health < 0) {
    obj_spawner.mob_count--;
	instance_destroy(other);
}

// destory projectial 
instance_destroy()