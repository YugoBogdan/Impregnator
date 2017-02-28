///show_highscore();

var lista = load_highscore_from_json_file();
var iz_liste = ds_map_find_value(lista,string(ds_map_size(lista)));

var string_total_score = "TOTAL SCORE: " + string(ds_map_find_value(iz_liste,"total_score"));
var string_existence = "# +Existed: " + string(ds_map_find_value(iz_liste,"existence")) + " seconds!";
var string_points = "# +Points gathered: " + string(ds_map_find_value(iz_liste,"points"));
var string_challenges = "# +Challenges played: " + string(ds_map_find_value(iz_liste,"challenges"));
var string_date = "# +Date: " + string(ds_map_find_value(iz_liste,"date"));

show_message(string_total_score
    + "#-------------------------"
    + string_existence
    + string_points
    + string_challenges
    + string_date);
