///save_highscore_in_json_file()
/*
var highscore_list = ds_list_create();
ds_list_clear(highscore_list);

if(file_exists("highscore.json")){
    highscore_list_previous = load_highscore_from_json_file();
    ds_list_add(highscore_list,highscore_list_previous);
}

var date = date_current_datetime();
var existence = string(global.score);
var points = string(global.points);
var challenges_count = global.challenges_count;

var this_highscore = ds_map_create();
ds_map_add(this_highscore,"date",date);
ds_map_add(this_highscore,"existence",existence);
ds_map_add(this_highscore,"points",points);
ds_map_add(this_highscore,"challenges",challenges_count);

ds_list_add(highscore_list,this_highscore);

var json_file = file_text_open_write("highscore.json");
file_text_write_string(json_file, json_encode(highscore_list));
file_text_close(json_file);

/*result = load_highscore_from_json_file();

var highscore_list = ds_list_create();
ds_list_add(highscore_list,result);*/

//var iz_liste = ds_list_find_index(highscore_list,result);

/*show_message("length: " + string(ds_list_size(highscore_list)));

for (var i = 0; i<ds_list_size(highscore_list); i++){
    var iz_liste = ds_list_find_value(highscore_list,i);
    
    show_message("date: " + string(ds_map_find_value(iz_liste,"date")));
    show_message("existence: " + string(ds_map_find_value(iz_liste,"existance")));
    show_message("points: " + string(ds_map_find_value(iz_liste,"points")));
    show_message("challenge: " + string(ds_map_find_value(iz_liste,"challenges")));
}*/

///save_highscore_in_json_file()

//var highscore_list = ds_list_create();

var date_base = date_current_datetime();
var date_day = "day: " + string(date_get_day(date_base));
var date_hour = "hour: " + string(date_get_hour(date_base));
var date_minute = "minute: " + string(date_get_minute(date_base));
var date = date_day + " " + date_hour + " " + date_minute;

var existence = global.ingame_time;
var points = global.points;
var challenges_count = global.challenges_count;
global.total_score = existence + points*2 + challenges_count*3;

var this_highscore = ds_map_create();
ds_map_add(this_highscore,"existence",string(existence));
ds_map_add(this_highscore,"points",string(points));
ds_map_add(this_highscore,"challenges",string(challenges_count));
ds_map_add(this_highscore,"total_score",string(global.total_score));
ds_map_add(this_highscore,"date",date);



//ds_list_add(highscore_list,this_highscore);

var json_file = file_text_open_write("highscore.json");
file_text_write_string(json_file, json_encode(this_highscore));
file_text_close(json_file);

var iz_liste = this_highscore;

show_message("TOTAL SCORE: " + string(ds_map_find_value(iz_liste,"total_score")));
show_message("Existed for: " + string(ds_map_find_value(iz_liste,"existence")) + " seconds!");
show_message("Points gathered: " + string(ds_map_find_value(iz_liste,"points")));
show_message("Challenges played: " + string(ds_map_find_value(iz_liste,"challenges")));
show_message("Date: " + string(ds_map_find_value(iz_liste,"date")));

