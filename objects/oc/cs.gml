x = cp*7;
y = li*8;

if(keyboard_check(16)){
    if(keyboard_check(16) && keyboard_check_pressed(vk_anykey)){
        if(keyboard_key>47 && keyboard_key<58){//)-(
            tc(cs,keyboard_key);
        }
        if(keyboard_key>64 && keyboard_key<91){//A-Z
            tc(cs,keyboard_key);
        }

    }
    if(keyboard_check(16) && keyboard_check_pressed(188)){//,
        tc(cd,12);
    }
    if(keyboard_check(16) && keyboard_check_pressed(189)){//-
        tc(cd,17);
    }
    if(keyboard_check(16) && keyboard_check_pressed(190)){//.
        tc(cd,13);
    }
    if(keyboard_check(16) && keyboard_check_pressed(191)){///
        tc(cd,28);
    }
    if(keyboard_check(16) && keyboard_check_pressed(219)){//[
        tc(cd,24);
    }
    if(keyboard_check(16) && keyboard_check_pressed(220)){//\
        tc(cd,15);
    }
    if(keyboard_check(16) && keyboard_check_pressed(221)){//]
        tc(cd,25);
    }
    if(keyboard_check(16) && keyboard_check_pressed(222)){//'
        tc(cd,20);
    }

}
else if(keyboard_check_pressed(vk_anykey)){
    if(keyboard_key>64 && keyboard_key<91){//a-z
        tc(cl,keyboard_key);

    }
    else if(keyboard_key>47 && keyboard_key<58){//0-9
        tc(cl,keyboard_key);
    }
    else if(keyboard_key=188){//,
        tc(cd,10);
    }
    else if(keyboard_key=189){//-
        tc(cd,16);
    }
    else if(keyboard_key=190){//.
        tc(cd,11);
    }
    else if(keyboard_key=191){///
        tc(cd,14);
    }
    else if(keyboard_key=219){//[
        tc(cd,26);
    }
    else if(keyboard_key=220){//\
        tc(cd,15);
    }
    else if(keyboard_key=221){//]
        tc(cd,27);
    }
    else if(keyboard_key=222){//'
        tc(cd,20);
    }

    else{
        mk();
    }

}
