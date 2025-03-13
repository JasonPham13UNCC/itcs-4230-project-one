// Conditional for when you want to "deselect" basic tower purchasing
y = ystart + 4;
alarm[0] = 10;
var popup = instance_create_layer(display_get_width() / 2, display_get_height() / 2, "Instances_Shop", obj_popup_text);
if(global.buy == "fire tower") {
    popup.text = "Cancelled Fire Tower Purchase!";
    global.buy = ""
} else {
    if(score >= 10) {
        popup.text = "Purchasing Fire Tower!";
        global.buy = "fire tower"
    } else {
        popup.text = "Not enough money!";
    }
}