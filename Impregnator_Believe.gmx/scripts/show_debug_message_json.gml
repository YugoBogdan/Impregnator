///show_debug_message_json(obj, type)
// type options 0 - scalar, 1 - list, 2 - map

var obj = argument0;
var type = argument1;

var map = ds_map_create();

if(type == 0){
    ds_map_add(map, "debug", obj);
}else if(type == 1){
    ds_map_add_list(map, "debug", obj);
}else if(type == 2){
    ds_map_add_map(map, "debug", obj);
}

var json_map = json_encode(map);

show_debug_message(json_map);
show_debug_message("------------------------");

//ds_map_destroy(map);
