///scr_move_dash

len = spd*4;

//get horiz & verti 
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//moves player
phy_position_x += hspd;
phy_position_y += vspd;


//create dash effect
var dash = instance_create(x, y, obj_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;

