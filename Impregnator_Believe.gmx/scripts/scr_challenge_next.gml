///scr_challenge_next(points);

/*show_message("child:" + string(object_index) + "parent" + string(challenge_ctrl_parent));
if (object_is_ancestor(object_index,challenge_ctrl_parent)){
    show_message("child:" + string(object_index) + "parent" + string(challenge_ctrl_parent));
    instance_destroy();
}*/

points = argument[0];
global.points += points;
scr_generate_text("No sleep!",0,90,room_width/2,room_height/2);

var ctrl = controller_level1;

ctrl.current_challenge = ds_list_find_value(ctrl.challenge,irandom(ds_list_size(ctrl.challenge)-1))
ctrl.challenge_up_and_running = false;

/*if (instance_exists(rm_spd_ctrl)){
    rm_spd_ctrl.state = 'challenge_transition';
}*/
