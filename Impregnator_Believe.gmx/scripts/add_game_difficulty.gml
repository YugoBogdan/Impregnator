///add_game_difficulty();

if(game_ctrl.difficulty<2){
    game_ctrl.difficulty++;
    
    if (instance_exists(obj_sperm)){
        with (obj_sperm){
            speed_max = scr_speed_max();
            speed_max_initial = speed_max;
            speed_reduction = speed_max/20;//za 2/3 sekunde usporava od 100 do 0 (%)
        }
    }
}
