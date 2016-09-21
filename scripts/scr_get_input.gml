///scr_get_input
up = keyboard_check(ord('W'));
down = keyboard_check(ord('S'));
left = keyboard_check(ord('A'));
right = keyboard_check(ord('D'));
dash = keyboard_check_pressed(ord('C'));
attack = keyboard_check_pressed(ord('X'));


//gets axis
xaxis = (right - left);
yaxis = (down - up);

//check for controller inpu (gamepad)
if(gamepad_is_connected(0))
{   
    gamepad_set_axis_deadzone(0, .35);
    xaxis = gamepad_axis_value(0, gp_axislh);
    yaxis = gamepad_axis_value(0, gp_axislv);    
    dash = gamepad_button_check_pressed(0, gp_face1);
    attack = gamepad_button_check_pressed(0, gp_face3);
}
