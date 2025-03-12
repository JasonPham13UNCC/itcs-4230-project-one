if (hp < 270) {
    shader_set(sh_red_vignette);


    var hp_uniform = shader_get_uniform(sh_red_vignette, "hp");
    shader_set_uniform_f(hp_uniform, hp);

    draw_surface(application_surface, 0, 0);

    shader_reset();
}