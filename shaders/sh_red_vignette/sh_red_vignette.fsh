varying vec2 v_vTexcoord;

void main() {
    vec4 baseColor = texture2D(gm_BaseTexture, v_vTexcoord);

    vec2 uv = v_vTexcoord - vec2(0.5);
    float dist = length(uv) * 1.5;
    float vignette = smoothstep(0.6, 1.0, dist);

    vec4 redOverlay = vec4(1.0, 0.0, 0.0, 1.0);
    float intensity = vignette * 0.6;

    gl_FragColor = mix(baseColor, redOverlay, intensity);
}
