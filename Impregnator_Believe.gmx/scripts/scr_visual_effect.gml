///scr_visual_effect(kind,color,duration)

kind = argument[0];
color = argument[1];
duration = argument[2];

var visual_effect = instance_create(x,y,obj_visual_effect);
visual_effect.kind = kind;
visual_effect.color = color;
visual_effect.alarm[0] = duration;
