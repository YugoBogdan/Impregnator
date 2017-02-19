///scr_theta()

//pomocno njesra za protivnike

if (object_index != asset_get_index("obj_sperm")) &&
    (object_index != asset_get_index("obj_sperm_menu"))
{
    no_input = false;
    device_tilt_x = x_spd;
    device_tilt_y = y_spd;
}

//pitagorina teorema - magnituda brzine
spd = sqrt(sqr(x_spd)+sqr(y_spd));

if (sign(x_spd) || sign(x_spd) == 0){
    var x_is_positive = 1;
}else{
    var x_is_positive = -1;
}

if (sign(y_spd) || sign(y_spd) == 0){
    var y_is_positive = 1;
}else{
    var y_is_positive = -1;
}

//prenosenje x_spd i y_spd na pomocne promenljive za racunanje ugla
if (x_spd != 0){
    x_spd_aux = x_spd;
}else{
    x_spd_aux = 0.00001*sign(device_tilt_x);
}

if (y_spd != 0){
    y_spd_aux = y_spd;
}else{
    y_spd_aux = 0.00001*sign(device_tilt_y);
}

if (os_type == os_windows
    && no_input == false
    || os_type == os_android)
    {
    //directional angle for spermy/tail direction
    if(x_is_positive && !y_is_positive){
        theta = radtodeg(arctan(abs(y_spd_aux)/abs(x_spd_aux)));
        
    }else if(!x_is_positive && !y_is_positive){
        theta = radtodeg(arctan(abs(x_spd_aux)/abs(y_spd_aux))) +90;
    
    }else if(!x_is_positive && y_is_positive){
        theta = radtodeg(arctan(abs(y_spd_aux)/abs(x_spd_aux))) +180;
    
    }else if(x_is_positive && y_is_positive){
        theta = radtodeg(arctan(abs(x_spd_aux)/abs(y_spd_aux))) +270;
    }
}

return theta;
