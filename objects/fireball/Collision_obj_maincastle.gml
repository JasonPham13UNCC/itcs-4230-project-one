

// gets health from foe and subtracts that amount and if they die remove them.
if(instance_exists(other)) {
	other.hp -= 30
}

if(instance_exists(other) and other.hp < 0) {
	instance_destroy(other)
}


// destory projectial 
instance_destroy()