//CHANGE SCORE VALUES TO ACCURATE SCORES FOR UPGRADES

if(score >= 0){  //USED TO TEST THE NON GREY BUTTON CHANGE THIS !!!!!!!!!!
	instance_create_layer(200,950,"Buttons",obj_shop_button_tower);
}
else{
instance_create_layer(200,950,"Buttons",obj_shop_button_tower_gray);
}
if(score > 15){
	instance_create_layer(500,950,"Buttons",obj_shop_button_tower);
}
else{
instance_create_layer(500,950,"Buttons",obj_shop_button_tower_gray);
}

if(score > 25){
	instance_create_layer(800,950,"Buttons",obj_shop_button_tower);
}
else{
instance_create_layer(800,950,"Buttons",obj_shop_button_tower_gray);
}

if(score > 35){
	instance_create_layer(1100,950,"Buttons",obj_shop_button_tower);
}
else{
instance_create_layer(1100,950,"Buttons",obj_shop_button_tower_gray);
}

if(score > 45){
	instance_create_layer(1400,950,"Buttons",obj_shop_button_tower);
}
else{
instance_create_layer(1400,950,"Buttons",obj_shop_button_tower_gray);
}

instance_create_layer(1700,950,"Buttons",obj_shop_button_back);