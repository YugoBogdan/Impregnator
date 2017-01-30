///scr_enemy_create(x,y,object,x_spd,y_spd)

enemy = instance_create(argument[0],argument[1],argument[2]);
enemy.x_spd = argument[3];
enemy.y_spd = argument[4];

return enemy;
