/*      PLAYER INPUT EVAL       */

var acceleration, fric;
if(on_ground){
    acceleration = RA;
    fric = RF;
} else {
    acceleration = AA;
    fric = AF;
}


if(keyboard_check_direct(key_right)){
    //Running right

    //First add frtion if currently running left
    if (hor_speed < 0)
        hor_speed = approach( hor_speed, 0, fric );

    hor_speed = approach( hor_speed, MH, acceleration );

} else if(keyboard_check_direct(key_left)){
    //Running left

    //First add frtion if currently running right
    if (hor_speed > 0)
        hor_speed = approach( hor_speed, 0, fric );

    hor_speed = approach( hor_speed, -MH, acceleration );

} else {
    //Stopping

    hor_speed = approach(hor_speed, 0, fric);

}


if (on_ground) {

    check_jump = true;

    //Jumping
    if(keyboard_check_pressed(key_jump))
        ver_speed = JS;

} else {

    //Gravity
    ver_speed = approach(ver_speed, MV, SG);

    //Double jumping
    if (keyboard_check_pressed( key_jump ) && check_jump) {
        check_jump = false;
        ver_speed = DS;
    }

}
