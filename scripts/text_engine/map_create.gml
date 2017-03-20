var character, cursor_pos, cursor_line;

character=argument0;
cursor_pos=argument1;
cursor_line=argument2;

for(i=0;i<string_length(character);i+=1){

    if(character>47 && character<58){
        text_create(spr_lower_chars,character,cursor_pos,cursor_line);
    }

    if(character>64 && character<91){
        text_create(spr_upper_chars,character,cursor_pos,cursor_line);
    }

}
