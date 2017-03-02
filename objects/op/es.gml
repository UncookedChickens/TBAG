//basic physics//

gravity = 0;

if(!place_meeting(x,y+1,oc)){
    gravity = .5;
}

//walk physics//

if(keyboard_check_pressed(ord("A"))){
    hspeed = -.5;
    sw = pl;
}
if(keyboard_check_pressed(ord("D"))){
    hspeed = +.5;
    sw = pr;
}
if(keyboard_check_released(ord("A"))){
    hspeed = 0;
}
if(keyboard_check_released(ord("D"))){
    hspeed = 0;
}

//jump physics//
/*if(keyboard_check_pressed(ord("W"))){
    if(j=1){
        //do nothing cuase you're already in the air//
    }
    else{
        vspeed = -.7;
        j = 1;
    }
    
}
