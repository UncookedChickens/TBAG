x = cursor_pos*7;
y = current_line*8;

if(keyboard_check(16)){
    if(keyboard_check_pressed(vk_anykey)){
        if(keyboard_key>47 && keyboard_key<58 || keyboard_key>64 && keyboard_key<91){//)-( && A-Z
            text_create(spr_upper_chars,keyboard_key,cursor_pos,current_line);
        }

        else if(keyboard_key>187 && keyboard_key<223){//,
            text_create(spr_special_chars,keyboard_key-153,cursor_pos,current_line);
        }

    }

}
else if(keyboard_check_pressed(vk_anykey)){
    if(keyboard_key>47 && keyboard_key<58 || keyboard_key>64 && keyboard_key<91){//0-9 && a-z
        text_create(spr_lower_chars,keyboard_key,cursor_pos,current_line);

    }
    else if(keyboard_key>187 && keyboard_key<223){//,
        text_create(spr_special_chars,keyboard_key-188,cursor_pos,current_line);
    }

    else{
        mod_keys();
    }

}
