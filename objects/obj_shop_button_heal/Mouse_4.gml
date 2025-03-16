y = ystart + 4;
alarm[0] = 10;
var popup = instance_create_layer(display_get_width() / 2, display_get_height() / 2, "Instances_Shop", obj_popup_text);
if(score >= 100) {
    popup.text = "Bought more HP!";
    obj_maincastle.hp += 5;
    score -= 100;
} else {
    popup.text = "Not enough money!";
}