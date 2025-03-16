  //camera_destroy(view_camera[1])
view_camera[0]=view_camera[1]
global.game_over=true;


var room_center_x = room_width / 2;
var room_center_y = room_height / 2;
instance_create_layer(room_center_x, room_center_y - 75, "Instances", obj_menu_restart);
instance_create_layer(room_center_x, room_center_y + 75, "Instances", obj_menu_button_home);