// Conditional for when you want to "deselect" basic tower purchasing
y = ystart + 4;
alarm[0] = 10;
var popup = instance_create_layer(display_get_width() / 2, display_get_height() / 2, "Instances_Shop", obj_popup_text);
if(global.buy == "wizard tower") {
    popup.text = "Cancelled Wizard Tower Purchase!";
    global.buy = ""
    obj_shop_button_tower.anchor_visible = false;
} else {
    if(score >= 16) {
        popup.text = "Purchasing Wizard Tower!";
        global.buy = "wizard tower"
        obj_shop_button_tower.anchor_visible = true;
    } else {
        popup.text = "Not enough money!";
    }
}