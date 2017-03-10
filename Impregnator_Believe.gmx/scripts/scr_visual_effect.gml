///scr_visual_effect(kind,color,duration,dimensions)

kind = argument[0];
color = argument[1];
duration = argument[2];
if (argument_count == 4){
    dimensions = argument[3];
}else{
    dimensions = 20;
}


var visual_effect = instance_create(x,y,obj_visual_effect);
visual_effect.kind = kind;
visual_effect.color = color;
visual_effect.alarm[0] = duration;


if (dimensions == 'this'){
    visual_effect.width = sprite_get_width(sprite_index);
    visual_effect.height = sprite_get_height(sprite_index);
}else if(is_real(dimensions)){
    visual_effect.width = dimensions;
    visual_effect.height = dimensions;
}

