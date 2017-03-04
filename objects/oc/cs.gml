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
    if(keyboard_check(16) && keyboard_check_pressed(188)){//<
        tc(cs,12);
    }
    if(keyboard_check(16) && keyboard_check_pressed(190)){//>
        tc(cs,13);
    }
    if(keyboard_check(16) && keyboard_check_pressed(219)){//{
        tc(cs,24);
    }
    if(keyboard_check(16) && keyboard_check_pressed(221)){//}
        tc(cs,25);
    }
    if(keyboard_check(16) && keyboard_check_pressed(222)){//"
        tc(cs,21);
    }

}
else if(keyboard_check_pressed(vk_anykey)){
    if(keyboard_key>64 && keyboard_key<91){//a-z
        tc(cl,keyboard_key);

    }
    else if(keyboard_key>47 && keyboard_key<58){//0-9
        tc(cl,keyboard_key);
    }
    else if(keyboard_key>187 && keyboard_key<192){//,-./
        tc(cl,keyboard_key);
    }
    else if(keyboard_key>218 && keyboard_key<223){//[\]'
        tc(cl,keyboard_key);
    }

    else{
        mk();
    }

}
