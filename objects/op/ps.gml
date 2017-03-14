/*      PLAYER INPUT EVAL       */

var al, fr;
if(og){
    al = RA;
    fr = RF;
} else {
    al = AA;
    fr = AF;
}


if(keyboard_check_direct(key_right)){
    //Running right
    
    //First add frtion if currently running left
    if (hs < 0)
        hs = ap( hs, 0, fr );
        
    hs = ap( hs, MH, al ); 

} else if(keyboard_check_direct(key_left)){
    //Running left
    
    //First add frtion if currently running right
    if (hs > 0)
        hs = ap( hs, 0, fr );
        
    hs = ap( hs, -MH, al ); 

} else {
    //Stopping

    hs = ap( hs, 0, fr );

}


if (og) {

    cj = true;
    
    //Jumping
    if(keyboard_check_pressed(key_jump))
        vs = JS;

} else {

    //Gravity
    vs = ap( vs, MV, SG );

    //Double jumping
    if (keyboard_check_pressed( key_jump ) && cj) {
        cj = false;
        vs = DS;
    }
    
}