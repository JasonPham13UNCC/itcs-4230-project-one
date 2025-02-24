x = 235;
y = 225;
canMake = true;

for(i = 1; i <= 40; i ++){
	
	if(canMake = true){
instance_create_layer(x, y, "Instances", obj_anchorpoint);

}
	
x += 200

if(i = 10 || i = 18 || i = 26){
	canMake = false;
}

if(i = 14|| i = 22 || i = 30){
	canMake = true;
}

if(i%8 == 0){
	y += 150;
	x = 235;
}

}