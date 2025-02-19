//get target

var target = instance_nearest(x,y,obj_basicgoblin)

//move towards point
move_towards_point(target.x,target.y, speed)
image_angle = point_direction(x,y,target.x,target.y)