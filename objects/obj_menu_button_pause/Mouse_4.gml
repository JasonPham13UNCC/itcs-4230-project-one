y = ystart + 4;
alarm[0] = 10;
if(mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, self)) {
    image_alpha = 1;
    if(!is_paused) {
        is_paused = true;
        instance_deactivate_all(true);
        pauseSurf = surface_create(resW, resH);
        surface_set_target(pauseSurf);
        draw_surface(application_surface, 0, 0);
        surface_reset_target();

        if (buffer_exists(pauseSurfBuffer)) {
            buffer_delete(pauseSurfBuffer);
        }
        pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed, 1);
        buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);
    } else {
        is_paused = false;
        instance_activate_all();

        if(surface_exists(pauseSurf)) {
            surface_free(pauseSurf);
            pauseSurf = -1;
        }
        if(buffer_exists(pauseSurfBuffer)) {
            buffer_delete(pauseSurfBuffer);
            pauseSurfBuffer = -1;
        }
    }
}
