///scr_checkpoint_next()

checkpoint_controller.checkpoint_counter += 1;

if (checkpoint_controller.checkpoint_counter < checkpoint_controller.checkpoint_max){
    x_pseudo_random = 20 + irandom(room_width - 20);
    y_pseudo_random = 50 + irandom(room_height - 50);
    var checkpoint = instance_create(x_pseudo_random,y_pseudo_random,obj_checkpoint);
    
    with(checkpoint){
        while (place_meeting(x,y,obj_sperm)){
            checkpoint.x = 20 + irandom(room_width - 20);
            checkpoint.y = 50 + irandom(room_height - 50);
        }
    }
}else{
    with(obj_checkpoint) instance_destroy();
    with(checkpoint_controller) instance_destroy();
    
    //scr_generate_text("WOW! Good job fucking! I mean good fucking job!",0,4*room_speed);
}
