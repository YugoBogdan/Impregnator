///game_over();

if (!game_ctrl.cheats){
    if (instance_exists(obj_sperm)){
        with(obj_sperm){
            instance_destroy();
            with(tail) instance_destroy();
        }
    }
    
    game_ctrl.difficulty = 0;
    highscore_save_in_json_file();
    
    //room_goto(rm_menu);
}    
