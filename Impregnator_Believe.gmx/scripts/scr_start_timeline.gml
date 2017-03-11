///scr_start_timeline(index,speed)
var timeline = argument[0];
if (argument_count == 2){
    spd = argument[1];
}else{
    spd = 1;
}
timeline_index = timeline;
timeline_position = 0;
timeline_running = true;
timeline_speed = spd;
timeline_loop = true;
