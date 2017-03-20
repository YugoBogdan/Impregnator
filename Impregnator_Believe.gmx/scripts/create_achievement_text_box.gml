///create_achievement_text_box(text);

text = argument[0];

text_box = instance_create(0,0,obj_new_achievement_text_box);
text_box.text = text;

return text_box;
