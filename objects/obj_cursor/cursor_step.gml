x = cursor_pos*7;
y = current_line*8;

if(room = rom_editor) {

	if(keyboard_check(16) && key_press(vk_anykey)) {
		text_modify(2,cursor_pos,current_line,0,spr_all_chars,global.asc_key[1,keyboard_key]);
	}

	else if(key_press(vk_anykey)) {
		if(keyboard_key>32 && keyboard_key<127) {
			text_modify(2,cursor_pos,current_line,0,spr_all_chars,global.asc_key[0,keyboard_key]);
		}
		else {
			mod_keys();
		}

	}

}
else if(room = rom_game) {

	if(read_file=1) {

		map_create();

	}

	read_file = 0;

}

if(room = rom_load_map) {

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

	for(i=0;i<15;i+=1) {

		//maps_list[i] = filename_name(file_find_next());
		map_file_list = filename_name(file_find_next());
    }

	ds_list_sort(maps_list,true);

}
