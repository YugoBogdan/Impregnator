///scr_enemy_create(position,object)

var position = argument[0];
var object = argument[1];

var pos_x, pos_y;
switch (position){
    case 'top':
        pos_x = irandom(room_width);
        pos_y = 0;
        break;
    case 'bottom':
        pos_x = irandom(room_width);
        pos_y = room_height;
        break;
    case 'left':
        pos_x = 0;
        pos_y = irandom(room_height);
        break;
    case 'right':
        pos_x = room_width;
        pos_y = irandom(room_height);
        break;
    default:
        pos_x = 0;
        pos_y = 0;
        break;
}

var enemy = instance_create(pos_x,pos_y,object);
enemy.position = position;
