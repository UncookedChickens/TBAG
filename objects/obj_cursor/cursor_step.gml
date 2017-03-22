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

	if(read_file=1){
		global.map_file = file_text_open_read(work_dir + "\maps\test.txt");

		if(!file_text_eof(global.map_file)){

			for(i=0;i<max_line;i+=1){
				global.map_string[i] = file_text_read_string(global.map_file);
				file_text_readln(global.map_file);
			}

			if(!file_text_eoln(global.map_file)){

				for(i=0;i<max_line;i+=1){

					for(j=0;j<string_length(global.map_string[i];j+=1)){
						// Create multiples of this cause there are more than one sprites
						if(ascii(global.map_string[i],j)>64 && ascii(global.map_string[i],j)<91){//)-( && A-Z
							text_create(spr_upper_chars,ascii(global.map_string[i],j),cursor_pos,current_line);
						}

						else if(ascii(global.map_string[i],j)>47 && ascii(global.map_string[i],j)<58 || ascii(global.map_string[i],j)>96 && ascii(global.map_string[i],j)<123){// 0-9 && a-z
							text_create(spr_lower_chars,ascii(global.map_string[i],j),cursor_pos,current_line);
						}
						
						else if(ascii(global.map_string[i],j)>187 && ascii(global.map_string[i],j)<223){//,
							text_create(spr_special_chars,ascii(global.map_string[i],j)-188,cursor_pos,current_line);
						}

					}

				}

			}

		}
		
		check = 0
	
	}

	file_text_close(global.map_file);

}
