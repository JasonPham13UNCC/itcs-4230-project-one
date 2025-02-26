gpu_set_blendenable(false);
if(is_paused) {
    surface_set_target(application_surface);
    if (surface_exists(pauseSurf)) {
        draw_surface(pauseSurf, 0, 0);
    }
    surface_reset_target();
}
gpu_set_blendenable(true);