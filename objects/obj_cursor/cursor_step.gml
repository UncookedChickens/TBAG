x = cursor_pos*7;
y = current_line*8;

if(room = rom_editor){

    if(keyboard_check(16) && keyboard_check_pressed(vk_anykey)){

        if(keyboard_key>47 && keyboard_key<58 || keyboard_key>64 && keyboard_key<91){//)-( && A-Z
            text_create(spr_upper_chars,keyboard_key,cursor_pos,current_line);
        }

        else if(keyboard_key>187 && keyboard_key<223){//,
            text_create(spr_special_chars,keyboard_key-153,cursor_pos,current_line);
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

}
else if(room = rom_game){

	if(check=1){
	    global.map_file = file_text_open_read(work_dir + "\maps\test.txt");

	    if(!file_text_eof(global.map_file)){

	        for(i=0;i<10;i+=1){
	            global.map_string[i] = file_text_read_string(global.map_file);
	            file_text_readln(global.map_file);
	            show_message(global.map_string[i]);
	        }

	      	if(!file_text_eoln(global.map_file)){

	        	for(i=0;i<string_length(global.map_string[i];i+=1){
	            	text_create(string_char_at(global.map_string[i],j),i,j);
	        	}

	        }

	    }

	    check = 0;

	}

	file_text_close(global.map_file);

}
