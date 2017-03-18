var character, cursor_pos, cursor_line;

character=argument0;
cursor_pos=argument1;
cursor_line=argument2;

for(l=0;l<string_length(character);l+=1){

    if(character>47 && character<58){
        tc(cl,character);
    }

    if(character>64 && character<91){
        tc(cs,character);
    }

    if(character>96 && character<123){
        tc(cs,character);
    }

}
