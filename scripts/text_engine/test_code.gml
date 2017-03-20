y = current_line*8;

global.map_file = file_text_open_read(work_dir + "\maps\test.txt");
for(i=0;i<10;i+=1){
    global.map_string[i] = file_text_read_string(global.map_file);
    file_text_readln(global.map_file);
    show_message(global.map_string[i]);
}
file_text_close(global.map_file);
// Make each line a seperate string
/*while(!file_text_eof(global.map_file)){



   max_position[line_index] = string_length(global.map_string[line_index]);
   line_index+=1;
}
file_text_close(global.map_file);*/

for(i=0;i<line_index;i+=1){

    for(j=0;j<max_position[i];j+=1){
    show_message("heello");
        map_create(string_char_at(global.map_string[i],j),x,y);
    }

}
