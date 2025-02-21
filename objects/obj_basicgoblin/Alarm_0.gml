

// need to add more logic 

// check if the target exists 
if(instance_exists(obj_maincastle)) {
var target = instance_nearest(x,y,obj_maincastle)


if(distance_to_point(target.x, target.y) > attack_range) {
	//move towards point
	move_towards_point(target.x,target.y, speed)
	
} else {
	move_towards_point(target.x,target.y, 0)
	//attacking program
	
}


}

alarm[0]=10