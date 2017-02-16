///scr_challenge_next();

var ctrl = controller_level1;

ctrl.current_challenge = ds_list_find_value(ctrl.challenge,irandom(ds_list_size(ctrl.challenge)-1))
ctrl.challenge_up_and_running = false;
