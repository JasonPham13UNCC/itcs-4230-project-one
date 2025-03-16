if(room == rm_menu) {
    if (active) {
        anim_time += 1;
        var t = anim_time / anim_duration;
    
    
        t = clamp(t, 0, 1);
        
    
        var curve_value = animcurve_channel_evaluate(curve, t);
        
    
        y = y_start + (y_target - y_start) * curve_value;
        
    
        if (t >= 1) active = false;
    }
}