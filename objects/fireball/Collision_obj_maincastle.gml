

// gets health from foe and subtracts that amount and if they die remove them.
if(instance_exists(target)) {
target.hp -= 30
}

if(target.hp < 0 and instance_exists(target)) {
	instance_destroy(other)
}

// destory projectial 
instance_destroy()