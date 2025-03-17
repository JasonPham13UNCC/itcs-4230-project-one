mouseHovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);
closestAnchor = instance_nearest(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), obj_anchorpoint); 

if (mouseHovering && large == false)  { 
    origX = closestAnchor.image_xscale; 
    origY = closestAnchor.image_yscale;
  
    testX = origX * 1.10;
    testY = origY * 1.10;
	
	if(testX <= largestX && testY <= largestY) {
        closestAnchor.sprite_index = spr_anchorpoint_green;
        closestAnchor.image_xscale *= 1.10;
        closestAnchor.image_yscale *= 1.10;
        large = true;
        closestAnchorOld = closestAnchor;
    } else {
        closestAnchor.image_xscale = origX;
        closestAnchor.image_yscale = origX;
	}
}

if(large == true && mouseHovering == false) { 
    closestAnchor.sprite_index = spr_anchorpoint;
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
            tower_placed = true;
            closestAnchor.visible = false;
            score -= 10
        } else if(score >= 12 && global.buy == "fire tower") {
            var current_tower = instance_create_layer(closestAnchor.x, closestAnchor.y, "Instances" ,obj_fire_tower);
            tower_placed = true;
            closestAnchor.visible = false;
            score -= 12
        } else if(score >= 14 && global.buy == "ice tower") {
            var current_tower = instance_create_layer(closestAnchor.x, closestAnchor.y, "Instances" ,obj_ice_tower);
            tower_placed = true;
            closestAnchor.visible = false;
            score -= 14
        } else if(score >= 16 && global.buy == "tall tower") {
            var current_tower = instance_create_layer(closestAnchor.x, closestAnchor.y, "Instances" ,obj_talltower);
            tower_placed = true;
            closestAnchor.visible = false;
            score -= 16
        }
    } 
}