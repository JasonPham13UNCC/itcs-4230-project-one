lifetime--;

if (lifetime > 0) {
    alpha -= fade_speed / 100;
} else {
    instance_destroy();
}