///scr_change_speed(object,factor,duration)

object = argument[0];
factor = argument[1];
duration = argument[2];

with(object){
    spd_factor *= 1.2;
    speed_max = scr_speed_max();
    alarm[1] = 90; //return speed to normal
}
