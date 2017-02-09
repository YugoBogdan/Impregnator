///scr_generate_text(text,points,duration)
text = argument[0];
points = argument[1];
duration = argument[2];

text_instance = instance_create(x,y,obj_text);
text_instance.text = text;
text_instance.points = points;
global.points += points;
text_instance.alarm[0] = duration;

