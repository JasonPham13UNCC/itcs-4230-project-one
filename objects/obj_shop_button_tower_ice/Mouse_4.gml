// Conditional for when you want to "deselect" basic tower purchasing
y = ystart + 4;
alarm[0] = 10;
var popup = instance_create_layer(display_get_width() / 2, display_get_height() / 2, "Instances_Shop", obj_popup_text);
if(global.buy == "ice tower") {
    popup.text = "Cancelled Ice Tower Purchase!";
    global.buy = ""
} else {
    if(score >= 14) {
        popup.text = "Purchasing Ice Tower!";
        global.buy = "ice tower"
    } else {
        popup.text = "Not enough money!";
    }
}