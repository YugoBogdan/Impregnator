///scr_tail_image_angle();

if (speed > 0){
    if (tail.image_angle != direction){
        var diff = angle_difference(direction,tail.image_angle);
        var sign_diff = sign(diff);
        var minimum = 2;
        var maximum = 90;
        var dividing_factor = 3;
        
        if (abs(diff)>maximum){
            diff = maximum*sign_diff;
        }else if (abs(diff)<minimum){
            tail.image_angle = direction;
            exit;
        }
        
        tail.image_angle += diff/dividing_factor;
    }
}
