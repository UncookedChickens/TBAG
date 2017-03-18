var character, cursor_pos, cursor_line;

character=argument0;
cursor_pos=argument1;
cursor_line=argument2;

for(l=0;l<string_length(character);l+=1){

    if(character>47 && character<58){
        text_create(spr_lower_chars,character,cursor_pos,cursor_line);
    }

    if(character>64 && character<91){
        text_create(spr_upper_chars,character,cursor_pos,cursor_line);
    }

}
