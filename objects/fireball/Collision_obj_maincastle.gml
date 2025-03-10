

// gets health from foe and subtracts that amount and if they die remove them.
if(instance_exists(target)) {
target.health -= damage
}

if(target.health < 0 and instance_exists(target)) {
	instance_destroy(other)
}

// destory projectial 
instance_destroy()