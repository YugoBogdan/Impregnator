/// load_highscore_from_json_file()

var file_name = "highscore.json";
result = ds_list_create();

if file_exists(file_name){
    var json_file = file_text_open_read(file_name);
    result = json_decode(file_text_read_string(json_file));
    file_text_close(json_file);
}

return result
