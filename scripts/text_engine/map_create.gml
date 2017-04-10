global.map_file = file_text_open_read(work_dir + "\rooms\main_menu.txt");

while(!file_text_eof(global.map_file)) {

	global.map_string[current_line] = file_text_read_string(global.map_file);
	file_text_readln(global.map_file);

	for(j=0;j<=string_length(global.map_string[current_line]);j+=1) {

		global.map_string_pos[current_line,j] = string_char_at(global.map_string[current_line],j);

		text_modify(2,j,current_line,0,global.sall_chars,ascii(global.map_string_pos[current_line,j]));

		// For debugging purposes
		// show_message('--> char at pos: [' + j + '] ' + global.map_string_pos[current_line,j]);

	}

	max_position[current_line] = string_length(global.map_string[current_line]) + 1;
	current_line += 1;
	max_line += 1;
	cursor_pos = 0;

}

read_file = false;
global.gamemode = true;

file_text_close(global.map_file);

current_line -= 1;
