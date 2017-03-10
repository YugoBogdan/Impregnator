///draw_orientation_indicator_when_outside_view(indicator_sprite)

if (argument_count == 0){
    var indicator_sprite = spr_indicator_enemy;
}else{
    var indicator_sprite = argument[0];
}

if !(x > view_xview[1] &&
    x < view_xview[1] + view_wview[1] /*&&
    y > view_yview[1] &&
    y < view_yview[1] + view_hview[1]*/)
{
    if (x > view_xview[1] + view_wview[1])
    {
        indicator_y = y;
        indicator_x = view_xview[1] + view_wview[1];
        indicator_subimg = 0;
    }
    else if (x < view_xview[1])
    {
        indicator_y = y;
        indicator_x = view_xview[1];
        indicator_subimg = 1;
    }
    
    draw_sprite(indicator_sprite,indicator_subimg,indicator_x,indicator_y);
}

if !(y > view_yview[1] &&
    y < view_yview[1] + view_hview[1])
{
    if (y > view_yview[1] + view_hview[1])
    {
        indicator_x = x;
        indicator_y = view_yview[1] + view_hview[1];
        indicator_subimg = 2;
    }
    else if (y < view_yview[1])
    {
        indicator_x = x;
        indicator_y = view_yview[1];
        indicator_subimg = 3;
    }
    
    draw_sprite(indicator_sprite,indicator_subimg,indicator_x,indicator_y);
}
