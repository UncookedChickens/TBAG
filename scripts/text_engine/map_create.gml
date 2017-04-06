global.map_file = file_text_open_read(work_dir + "\maps\test.txt");
line_index = 0;

while(!file_text_eof(global.map_file)) {

	global.map_string[line_index] = file_text_read_string(global.map_file);
	file_text_readln(global.map_file);

	for(j=1;j<=string_length(global.map_string[line_index]);j+=1) {

		global.map_string_pos[line_index,j] = string_char_at(global.map_string[line_index],j);

		text_create(spr_all_chars,ascii(global.map_string_pos[line_index,j]),cursor_pos,line_index);
					
		// For debugging purposes
		// show_message('--> char at pos: [' + j + '] ' + global.map_string_pos[line_index,j]);

	}

	line_index += 1;
	cursor_pos = 0;

}

file_text_close(global.map_file);
