///scr_game_over();

if (!game_ctrl.cheats){
    save_highscore_in_json_file();
    
    room_goto(rm_menu);
}    
