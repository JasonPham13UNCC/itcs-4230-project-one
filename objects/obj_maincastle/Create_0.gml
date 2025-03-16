//target = instance_nearest(x,y,obj_maincastle)

// scales down the size of the object to match more realist tower size
image_xscale = xscale
image_yscale = yscale


// Create the particle system
ps = part_system_create();
part_system_depth(ps, -10); // Ensures it's rendered above objects

//create the fire particle type
ptc_fire = part_type_create();
part_type_shape(ptc_fire, pt_shape_flare);
part_type_size(ptc_fire, 0.7, 0.9, 0, 0);
part_type_color3(ptc_fire, c_red, c_orange, c_yellow);
part_type_alpha3(ptc_fire, 1, 0.5, 0); //fade out smoothly
part_type_life(ptc_fire, 15, 30);
part_type_speed(ptc_fire, 0.5, 1, 0, 0);
part_type_direction(ptc_fire, 0, 360, 0, 0);
part_type_blend(ptc_fire, true);