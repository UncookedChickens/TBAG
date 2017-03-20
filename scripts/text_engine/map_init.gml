// The double slash is just there in my editor so I don't get annoyed with the syntax highlighting
work_dir = working_directory;
global.location = get_string("","");
// When entering the name of your level the .ini file and the .txt MUST BE THE SAME NAME!!!!
global.filename = get_string("","");
line_index = 0;
max_position[line_index] = 0;

ini_open(work_dir + global.location + global.filename);
max_line = ini_read_real("MX","li",0);
ini_close();

global.map_file = file_text_open_read(work_dir + global.location + global.filename);

// Make each line a seperate string
while(!file_text_eof(global.map_file){

   global.map_string[line_index] = file_text_readln(global.map_file);
   max_position[line_index] = string_length(global.map_string[line_index]]);
   line_index+=1;
}
file_text_close(global.map_file);

for(i=0;i<line_index;i+=1){

	for(j=0;j<max_position[i];j+=1){
		map_create(string_char_at(global.map_string[i],j));
    }

}
