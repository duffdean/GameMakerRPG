///scr_move_state
scr_get_input();

if(dash)
{
    state = scr_move_dash;
    alarm[0] = room_speed/8;
}

if(attack)
{
    image_index = 0;
    state = scr_attack_state;
}

//gets players direction
dir = point_direction(0, 0, xaxis, yaxis);

//get length
if(xaxis == 0 && yaxis == 0)
{
    len = 0;
}
else
{
    len = spd; 
}

//get horiz & verti 
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//moves player
phy_position_x += hspd;
phy_position_y += vspd;

//controls / animates sprite
image_speed = sign(len)*.2;
if(len == 0)
{
    image_index = 0;
}

//vertical sprite animation
if(vspd > 0)
{
    sprite_index = spr_player_down;
}
else if(vspd < 0)
{
    sprite_index = spr_player_up;
}

//horizontal spire animation
if(hspd > 0)
{
    sprite_index = spr_player_right;
}
else if (hspd <0)
{
    sprite_index = spr_player_left;
}
