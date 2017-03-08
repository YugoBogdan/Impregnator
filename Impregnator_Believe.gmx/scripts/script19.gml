///save_highscore_in_json_file()

//date key value
var date_base = date_current_datetime();
var date_year = string(date_get_year(date_base));
var date_month = string(date_get_month(date_base));
var date_day = string(date_get_day(date_base));
var date_hour = string(date_get_hour(date_base));
var date_minute = string(date_get_minute(date_base));
var date = date_year + "-" + date_month + "-" + date_day + " " + date_hour + ":" + date_minute;
//other keys values
var existence = global.ingame_time;
var points = global.points;
var challenges_count = global.challenges_count;
global.total_score = existence + points*2 + challenges_count*3;

//this_highscore key/values
var this_highscore = ds_map_create();
ds_map_add(this_highscore,"total_score",string(global.total_score));
ds_map_add(this_highscore,"existence",string(existence));
ds_map_add(this_highscore,"points",string(points));
ds_map_add(this_highscore,"challenges",string(challenges_count));
ds_map_add(this_highscore,"date",date);

//ds_list_add(highscore_list,this_highscore);
var highscore_list = ds_map_create();
ds_map_clear(highscore_list);
if(file_exists("highscore.json")){
    highscore_list_previous = load_highscore_from_json_file();
    highscore_list = highscore_list_previous;
}

ds_map_add_map(highscore_list,string(ds_map_size(highscore_list)+1),this_highscore);

var json_file = file_text_open_write("highscore.json");
file_text_write_string(json_file, json_encode(highscore_list));
file_text_close(json_file);

//ocitavanje poslednjeg rezultata
show_highscore();


/*if (!instance_exists(keyboard_ctrl)){
    keyboard = instance_create(0,0,keyboard_ctrl);
    keyboard.name_input_active = true;
}*/

