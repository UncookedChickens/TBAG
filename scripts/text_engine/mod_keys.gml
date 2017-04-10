// Detect if Modifier keys are pressed
// Backspace key
if(key_press(8)){
    // Makes sure the cursor is at the end of the line
    // Also makes sure that there is already text on the line
    // Check that the object it's trying to delete is behind the cursor
    if(max_position[current_line]>0 && cursor_pos=max_position[current_line]){
        // Then if all those values are checked, then delete the object
        text_modify(0,0,0,otext[current_line,cursor_pos-1],0,0);
        // Takes away one from the cursors position
        // And prevents you from moving back to that space without typing
        cursor_pos -= 1;
        max_position[current_line] -= 1;

    }
    // If you're at the beginning of a line and the line you're editing is in the middle of the document, but also not on line 1
    else if(cursor_pos=0 && current_line>1 && current_line<=max_line && max_position[current_line]>=0){
      	current_line -= 1;
        // Checks every line for the number of instances on that line[which is just the maximum position minus 1]
        for(i=current_line;i<max_line;i+=1){
            for(j=cursor_pos;j<max_position[i];j+=1){
                text_modify(1,j,i,0,0,0);
            }

        }

        max_line -= 1;

    }

}
// Check if the space key is pressed
if(key_press(32)){

    if(cursor_pos=max_position[current_line]){
        otext[current_line,cursor_pos] = instance_create(cursor_pos*7,current_line*8,obj_text);

        if(instance_exists(otext[current_line,cursor_pos])){
            cursor_pos += 1;
            max_position[current_line] += 1;
        }

    }
    else if(cursor_pos<max_position[current_line] && max_positin[current_line]>=0){

        max_position[current_line] += 1;

        for(i=max_position[current_line];i>cursor_pos;i-=1){
            otext[current_line,i] = instance_create(i*7,current_line*8,obj_text);

            if(instance_exists(otext[current_line,i-1])){
                otext[current_line,i].sprite_index = otext[current_line,i-1].sprite_index;
                otext[current_line,i].image_index = otext[current_line,i-1].image_index;
            }

            text_modify(0,0,0,otext[current_line,cursor_pos-1],0,0);

        }

        otext[current_line,cursor_pos].image_index = 90;

    }

}
if(key_press(vk_tab)){
	switch(global.mode){
    	case 0:global.mode=1 instance_create(start_xpos,start_ypos,obj_player);break;
        case 1:global.mode=0 text_modify(0,0,0,obj_player,0,0);break;
    }

}
if(key_press(vk_enter)){

    if(current_line=max_line && cursor_pos=max_position[current_line]){
        current_line += 1;
        max_line += 1;
        cursor_pos = 0;
    }
    else if(current_line<max_line && cursor_pos=max_position[current_line]){

        current_line += 1;
        cursor_pos = 0;

        // For loops go here

        max_line += 1;

    }

}

if(key_press(vk_up)) {

    if(current_line>1) {
        current_line -= 1;
        // cursor_pos = max_position[current_line-1];
    }

}
if(key_press(vk_down)) {

  	if(current_line<max_line) {

    	current_line += 1;

    }

}
if(key_press(vk_left)){

    if(cursor_pos>0){
        cursor_pos -= 1;
    }
    else{

        if(current_line>1 && current_line<max_line){
            current_line -= 1;
            cursor_pos = max_position[current_line];
        }

    }

}
if(key_press(vk_right)){

    if(cursor_pos<max_position[current_line]){
        cursor_pos += 1;
    }
    else{

        if(current_line<max_line){
            current_line += 1;
            cursor_pos = 0;
        }

    }

}
