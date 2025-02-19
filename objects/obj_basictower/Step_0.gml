




// hitting foes
// detection if foes exist 
if(instance_exists(obj_basicgoblin)) {
	if(shoot) {
		
		
		// gets nearest foe
		var target = instance_nearest(x,y, obj_basicgoblin);
		
		
		
		if(distance_to_point(target.x, target.y) < tower_range) {
			// creates projectial 
			instance_create_layer(x,y, "Instances", bullet) 
	
			//how quick it can shoot
			shoot = false;
			alarm[0] = att_speed; 
		}
	}
}