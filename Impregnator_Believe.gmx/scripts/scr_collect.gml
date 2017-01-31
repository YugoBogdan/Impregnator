///scr_collect(text,points)
text = argument[0];
points = argument[1];

draw_set_font(fnt_arial_12);
draw_text(x,y-75,text);
draw_text(x,y-50,"Gathered:" + string(points));

scr_immersion(8,15);
