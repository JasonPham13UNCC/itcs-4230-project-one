// Inherit the parent event
event_inherited();

if(room == rm_menu) {
    room_goto(rm_cutscene);
} else if(room == rm_instructions) {
    room_goto(rm_game);
}