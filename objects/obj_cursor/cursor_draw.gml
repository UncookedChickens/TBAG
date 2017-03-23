draw_self();
draw_text(960/2,200,fps);
draw_text(840/2,240,cursor_pos);
draw_text(880/2,240,max_position[current_line]);
draw_text(920/2,240,current_line);
draw_text(960/2,240,max_line);

if(room = rom_load_map){
	
	for(i=0;i<16;i+=1){
		str_list[i] = ds_list_find_index(maps_list,i);
		draw_text(room_width/2-16,i+1*16,str_list[i]);
    }
	/*draw_text(room_width/2-string_length(maps_list[00]),01*16,maps_list[00]);
	draw_text(room_width/2-string_length(maps_list[01]),02*16,maps_list[01]);
	draw_text(room_width/2-string_length(maps_list[02]),03*16,maps_list[02]);
	draw_text(room_width/2-string_length(maps_list[03]),04*16,maps_list[03]);
	draw_text(room_width/2-string_length(maps_list[04]),05*16,maps_list[04]);
	draw_text(room_width/2-string_length(maps_list[05]),06*16,maps_list[05]);
	draw_text(room_width/2-string_length(maps_list[06]),07*16,maps_list[06]);
	draw_text(room_width/2-string_length(maps_list[07]),08*16,maps_list[07]);
	draw_text(room_width/2-string_length(maps_list[08]),09*16,maps_list[08]);
	draw_text(room_width/2-string_length(maps_list[09]),10*16,maps_list[09]);
	draw_text(room_width/2-string_length(maps_list[10]),11*16,maps_list[10]);
	draw_text(room_width/2-string_length(maps_list[11]),12*16,maps_list[11]);
	draw_text(room_width/2-string_length(maps_list[12]),13*16,maps_list[12]);
	draw_text(room_width/2-string_length(maps_list[13]),14*16,maps_list[13]);
	draw_text(room_width/2-string_length(maps_list[14]),15*16,maps_list[14]);*/

}