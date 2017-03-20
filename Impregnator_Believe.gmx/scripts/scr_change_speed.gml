///scr_change_speed(object,factor,duration)

if (argument_count != 2){
    object = argument[0];
    factor = argument[1];
    duration = argument[2];

    with (object){
        spd_factor *= other.factor;
        speed_max = scr_speed_max();
        speed_reduction = speed_max/20;
        alarm[1] = other.duration; //return speed to normal
    }
}else if (argument_count == 2){
    if (argument[1] == 'reset'){
        object = argument[0];
        with (object){
            spd_factor = spd_factor_base;
            speed_max = scr_speed_max();
            speed_reduction = speed_max/20;
        }
    }
}
    

