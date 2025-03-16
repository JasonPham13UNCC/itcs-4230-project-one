mouseHovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);
closestAnchor = instance_nearest(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), obj_anchorpoint); 

if (mouseHovering && large == false)  { 
    origX = closestAnchor.image_xscale; 
    origY = closestAnchor.image_yscale;
  
    testX = origX * 1.5;
    testY = origY * 1.5;
	
	if(testX <= largestX && testY <= largestY){
        closestAnchor.image_xscale *= 1.5;
        closestAnchor.image_yscale *= 1.5;
        large = true;
        closestAnchorOld = closestAnchor;
    } else {
        closestAnchor.image_xscale = origX;
        closestAnchor.image_yscale = origX;
	}
}

if(large == true && mouseHovering == false){
		closestAnchor.image_xscale = origX;
	closestAnchor.image_yscale = origY;
	large = false;
}

if(keyboard_check_pressed(vk_up) && keyboard_check_pressed(vk_down)){
	obj_anchorpoint.image_xscale = 1;
	obj_anchorpoint.image_yscale = 1;
	large  = false;
}

if(!tower_placed) {
    if (mouseHovering && mouse_check_button_pressed(mb_left)) 
    {
        //Make conditionals for each tower, basic, fire, ice, wizard
        if(score >= 10 && global.buy == "basic tower") {
            var current_tower = instance_create_layer(closestAnchor.x, closestAnchor.y, "Instances" ,obj_basictower);
            //instance_destroy(closestAnchor);
            tower_placed = true;
            closestAnchor.visible = false;
            score -= 10
        } else if(score >= 12 && global.buy == "fire tower") {
            var current_tower = instance_create_layer(closestAnchor.x, closestAnchor.y, "Instances" ,obj_fire_tower);
            //instance_destroy(closestAnchor);
            tower_placed = true;
            closestAnchor.visible = false;
            score -= 12
        } else if(score >= 14 && global.buy == "ice tower") {
            var current_tower = instance_create_layer(closestAnchor.x, closestAnchor.y, "Instances" ,obj_ice_tower);
            //instance_destroy(closestAnchor);
            tower_placed = true;
            closestAnchor.visible = false;
            score -= 14
        } else if(score >= 16 && global.buy == "tall tower") {
            var current_tower = instance_create_layer(closestAnchor.x, closestAnchor.y, "Instances" ,obj_talltower);
            //instance_destroy(closestAnchor);
            tower_placed = true;
            closestAnchor.visible = false;
            score -= 16
        }
    } 
}