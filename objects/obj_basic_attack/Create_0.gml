//get target



var target = instance_nearest(x,y,obj_basicgoblin)

var ran = random_range(-random_varation, random_varation)
//move towards point
move_towards_point(target.x+ ran,target.y+ ran, speed)
// attack facing the dirrection of the foe
image_angle = point_direction(x,y,target.x+ ran,target.y+ran)


alarm[0]=lifetime