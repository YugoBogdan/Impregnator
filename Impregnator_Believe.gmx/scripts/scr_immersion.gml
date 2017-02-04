///scr_immersion(effect,duration)


effect = argument[0];
duration = argument[1];

object = instance_create(0,0,obj_immersion);

immersion_play_effect(effect);
object.alarm[0] = duration;
