///scr_checkpoint_next()

checkpoint_controller.checkpoint_counter += 1;

if (checkpoint_controller.checkpoint_counter < checkpoint_controller.checkpoint_max){
    instance_create(irandom(room_width),irandom(room_height),obj_checkpoint);
}else{
    with(obj_checkpoint) instance_destroy();
    with(checkpoint_controller) instance_destroy();
    
    scr_generate_text("WOW! Good job fucking! I mean good fucking job!",3,4*room_speed);
}
