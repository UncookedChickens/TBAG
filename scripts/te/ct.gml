// The double slash is just there in my editor so I don't get annoyed with the syntax highlighting
wd = working_directory;
global.lc = get_string("","");
global.lv = get_string("","");
// line_index
il = 0;
mp[il] = 0;

ini_open(wd + "\maps\" + global.lc + global.lv);
ml = ini_read_real("MX","li",0);
ini_close();

global.tf = file_text_open_read(working_directory + "\maps\" + global.lc + global.lv);

while(!file_text_eof(global.tf){

   global.st[il] = file_text_readln(global.tf);
   mp[il] = string_length(global.st[il]);
   il+=1;
}
file_text_close(global.tf);

for(i=0;i<il;i+=1){

	for(j=0;j<mp[i];j+=1){
		st(string_char_at(global.st[i], j),i,j);
    }

}
