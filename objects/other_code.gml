cursor_pos = 0;
current_line = 0;
otext[0,0] = 0;

for(i=0;i<100;i+=1){
    for(j=0;j<100;j+=1){
        otext[i,j] = 0;
    }
}
check = 1;
// The double slash is just there in my editor so I don't get annoyed with the syntax highlighting
work_dir = working_directory;
// When entering the name of your level the .ini file and the .txt MUST BE THE SAME NAME!!!!
line_index = 0;
max_position[line_index] = 0;

ini_open(work_dir + "\maps\test.ini");
max_line = ini_read_real("INIT","MAX_LINE",0);
ini_close();
global.map_file = "";
