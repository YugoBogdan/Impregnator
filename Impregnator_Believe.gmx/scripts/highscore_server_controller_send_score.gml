///highscore_server_controller_send_score(highscore_data)
var highscore_data = argument[0];

var this_highscore = ds_map_create();
ds_map_add(this_highscore, "username", ds_map_find_value(highscore_data, "name"));
ds_map_add(this_highscore, "score", ds_map_find_value(highscore_data, "total_score"));
ds_map_add(this_highscore, "in_game_time", ds_map_find_value(highscore_data, "existence"));
ds_map_add(this_highscore,"challenges", global.challenges_count);

with(highscore_server_controller){
    highscore_post_request = http_post_string(highscore_url, json_encode(this_highscore));
}

