///scr_game_over();

var object = ds_map_create();
ds_map_add(object,"kre","bar");

save_object_in_json_file(object, "file_name.json");
room_goto(rm_menu);

