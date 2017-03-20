///scr_challenge_next(points);

/*show_message("child:" + string(object_index) + "parent" + string(challenge_ctrl_parent));
if (object_is_ancestor(object_index,challenge_ctrl_parent)){
    show_message("child:" + string(object_index) + "parent" + string(challenge_ctrl_parent));
    instance_destroy();
}*/

points = argument[0];
global.points += points;

var ctrl = controller_level1;
//random:
//ctrl.current_challenge = ds_list_find_value(ctrl.challenge,irandom(ds_list_size(ctrl.challenge)-1));
//non random:
ctrl.current_challenge_number += 1;
ctrl.current_challenge_type = ds_list_find_value(ctrl.challenge,ctrl.current_challenge_number);
ctrl.challenge_up_and_running = false;

audio_play_sound_if_not_muted(snd_hooray_noncomercial,10,0);
