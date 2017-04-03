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
		
		map_create();

	}

	read_file = 0;

}

file_text_close(global.map_file);

if(room = rom_load_map){

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
  
	//maps_list[0] = filename_name(file_find_first(work_dir + "\maps\*.txt", 0));
  
	maps_list = ds_list_create();
	map_file_list = filename_name(file_find_first(work_dir + "\maps\*.txt", 0));
  
	for(i=0;i<15;i+=1){
      
		//maps_list[i] = filename_name(file_find_next());
		map_file_list = filename_name(file_find_next());
    }
  
	ds_list_sort(maps_list,true);

}
