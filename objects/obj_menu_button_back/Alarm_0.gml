// Inherit the parent event
event_inherited();

if(room == rm_credits) {
    room_goto(rm_menu);
} else if(room == rm_instructions) {
    room_goto(rm_game);
}