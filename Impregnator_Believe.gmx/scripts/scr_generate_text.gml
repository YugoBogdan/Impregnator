///scr_generate_text(text,points,duration,x,y)
text = argument[0];
points = argument[1];
duration = argument[2];
x_pos = argument[3];
y_pos = argument[4];

text_instance = instance_create(x_pos,y_pos,obj_text);
text_instance.text = text;
text_instance.points = points;
global.points += points;
text_instance.alarm[0] = duration;

