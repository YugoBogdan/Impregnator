///highscore_save_in_json_file()

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
var achievement_points = achievement_ctrl.achievement_points;
global.total_score = existence + points*2 + challenges_count*3 + achievement_points;

//this_highscore key/values
var this_highscore = ds_map_create();
ds_map_add(this_highscore,"total_score",string(global.total_score));
ds_map_add(this_highscore,"existence",string(existence));
ds_map_add(this_highscore,"points",string(points));
ds_map_add(this_highscore,"challenges",string(challenges_count));
ds_map_add(this_highscore,"date",date);

//cuvanje gornjig podataka
instance_create_unique(0,0,obj_highscore_this);
obj_highscore_this.this_highscore = this_highscore;

//unosenje imena
keyboard = instance_create_unique(0,0,keyboard_ctrl);
keyboard.name_input_active = true;






