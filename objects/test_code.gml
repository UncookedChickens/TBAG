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
