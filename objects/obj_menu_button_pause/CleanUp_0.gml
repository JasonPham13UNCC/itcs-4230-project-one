if(surface_exists(pauseSurf)) {
    surface_free(pauseSurf);
    pauseSurf = -1;
}
if(buffer_exists(pauseSurfBuffer)) {
    buffer_delete(pauseSurfBuffer);
    pauseSurfBuffer = -1;
}