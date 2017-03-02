///scr_orientation_variables(spd);

orientation = point_direction(x,y,irandom(room_width),irandom(room_height));
motion_set(orientation,spd);

x_spd = lengthdir_x(spd, orientation);
y_spd = lengthdir_y(spd, orientation);
