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
		/*ini_open(work_dir + "maps\test.ini");
		max_line = ini_read_real("INIT","MAX_LINE",10);
		ini_close();*/
		global.map_file = file_text_open_read(work_dir + "\maps\test.txt");
		line_index = 0;

		while(!file_text_eof(global.map_file)){

				global.map_string[line_index] = file_text_read_string(global.map_file);
				file_text_readln(global.map_file);
				//show_message('--> ' + global.map_string[line_index]);
				// Add string_char_at

				for(j=1;j<=string_length(global.map_string[line_index]);j+=1){

					global.map_string_pos[line_index,j] = string_char_at(global.map_string[line_index],j);
					//show_message(global.map_string_pos[line_index,j]);
					// Create multiples of this cause there are more than one sprites
					if(ascii(global.map_string[line_index])>64 && ascii(global.map_string[line_index])<91){// A-Z
						spr_ind = spr_upper_chars;
					}

					else if(ascii(global.map_string[line_index])>47 && ascii(global.map_string[line_index])<58){// 0-9
						spr_ind = spr_lower_chars;
					}
					else if(ascii(global.map_string[line_index])>96 && ascii(global.map_string[line_index])<123){// a-z
						spr_ind = spr_lower_chars;
					}

					else if(ascii(global.map_string[line_index])>187 && ascii(global.map_string[line_index])<223){//,
						spr_ind = spr_special_chars;
					}

					text_create(spr_ind,ascii(global.map_string_pos[line_index,j]),cursor_pos,current_line);
					// show_message('--> character at position: [' + ascii(j) + '] ' + global.map_string_pos[line_index,j]);
					show_message(ascii(j));

				}

			line_index += 1;

		}

		current_line += 1;

	}

	read_file = 0;

}

file_text_close(global.map_file);

/*if(room = rom_load_map){

	// ds_list_create
	// ds_list_destroy
	// ds_list_clear
	// ds_list_empty
	// ds_list_size
	// ds_list_add
	// ds_list_delete
	// ds_list_find_index
	// ds_list_find_value
	// ds_list_insert
	// ds_list_replace
	// ds_list_shuffle
	// ds_list_sort
	// ds_list_copy
	// ds_list_read
	// ds_list_write

	maps_list = ds_list_create();
	map_file = file_find_first('maps\*.txt', fa_directory );

	while (map_file != ''){

		ds_list_add(maps_list, map_file);
		show_debug_message('Adding -'+ map_file +'- to maps_list');
		map_file = file_find_next();
	}

}
