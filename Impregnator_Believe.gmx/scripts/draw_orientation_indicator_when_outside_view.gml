///draw_orientation_indicator_when_outside_view(indicator_color)

if (argument_count == 0){
    var indicator_color = c_white;
}else{
    var indicator_color = argument[0];
}

var indicator_x, indicator_y, indicator_rotation;

if !(x > view_xview[1] &&
    x < view_xview[1] + view_wview[1] /*&&
    y > view_yview[1] &&
    y < view_yview[1] + view_hview[1]*/)
{
    if (x >= view_xview[1] + view_wview[1])
    {
        indicator_y = y;
        indicator_x = view_xview[1] + view_wview[1];
        indicator_rotation = 0;
    }
    else if (x <= view_xview[1])
    {
        indicator_y = y;
        indicator_x = view_xview[1];
        indicator_rotation = 1;
    }
    draw_sprite_ext(spr_indicator_enemy,0,indicator_x,indicator_y,1,1,0 + indicator_rotation*180,indicator_color,1);
}

if !(y > view_yview[1] &&
    y < view_yview[1] + view_hview[1])
{
    if (y >= view_yview[1] + view_hview[1])
    {
        indicator_x = x;
        indicator_y = view_yview[1] + view_hview[1];
        indicator_rotation = 1;
    }
    else if (y <= view_yview[1])
    {
        indicator_x = x;
        indicator_y = view_yview[1];
        indicator_rotation = 0;
    }
    
    draw_sprite_ext(spr_indicator_enemy,0,indicator_x,indicator_y,1,1,90 + indicator_rotation*180,indicator_color,1);
}
