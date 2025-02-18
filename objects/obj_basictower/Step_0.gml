// detection of foes

var target = variable_instance_set(x,y, obj_basicgoblin);


// hitting foes

if(distance_to_object(obj_basicgoblin) < tower_range) {
	if(shoot) {
		
		// creates projectial 
		instance_create_layer(x,y, "Instances", bullet) 
	
		//how quick it can shoot
		shoot = false;
		alarm[0] = att_speed; 
	}
}