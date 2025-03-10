//get target



target = instance_nearest(x,y,obj_maincastle)

//move towards point
move_towards_point(target.x,target.y, speed)
// attack facing the dirrection of the foe
image_angle = point_direction(x,y, target.x, target.y)


alarm[0]=lifetime