// Detect if Modifier keys are pressed
// Backspace key
if(keyboard_check_pressed(8)){
    // Makes sure the cursor is at the end of the line
    // Also makes sure that there is already text on the line
    // Check that the object it's trying to delete is behind the cursor
    if(mp[li]>0 && cp=mp[li]){
        // Then if all those values are checked, then delete the object
        with(pc[li,cp-1]){
            instance_destroy();
        }

        // Takes away one from the cursors position
        // And prevents you from moving back to that space without typing
        cp -= 1;
        mp[li] -= 1;

    }
    // If you're at the beginning of a line and the line you're editing is in the middle of the document, but also not on line 1
    else if(cp=0 && li>1 && li<ml){
         if(mp[li]>0){
             li -= 1;
         }
        // Checks every line for the number of instances on that line[which is just the maximum position minus 1]
        for(i=li;i<=ml;i+=1){
            for(j=0;j<=mp[i];j+=1){
                td();
            }

        }

        ml -= 1;

    }
    else if(cp=mp[li] && li=ml){
        li -= 1;
        cp = mp[li];
        ml -= 1;
    }

}
// Check if the space key is pressed
if(keyboard_check_pressed(32)){
    if(cp=mp[li] && mp[li]<43){
        pc[li,cp] = instance_create(cp*7,li*8,ot);
        if(instance_exists(pc[li,cp])){
            cp += 1;
            mp[li] += 1;
        }

    }
    else if(cp<mp[li]){
        if(cp>=0){
            mp[li] += 1;
            for(i=mp[li]-1;i>cp;i-=1){
                pc[li,i] = instance_create(i*7,li*8,ot);
                if(instance_exists(pc[li,i-1])){
                    pc[li,i].image_index = pc[li,i-1].image_index;
                }
                with(pc[li,i-1]){
                    instance_destroy();
                }

            }

        }

        pc[li,cp].image_index = 90;

    }

}
if(keyboard_check_pressed(vk_enter)){
    if(li=ml && cp=mp[li]){
        li += 1;
        ml += 1;
        cp = 0;
    }
    else if(li<ml && cp=mp[li]){
        for(i=li;i<ml;i+=1){
            dt[i] = mp[i]-cp;
        }
        li += 1;
        cp = 0;

        // For loops go here

        ml += 1;

    }

}
if(keyboard_check_pressed(vk_up)){
    if(li>1 && mp[li-1]<mp[li]){
        cp = mp[li-1];
    }

    li -= 1;

}
if(keyboard_check_pressed(vk_down)){
    if(li<ml && mp[li+1]>mp[li]){
        cp = mp[li];
        li += 1;
    }
    else if(li<ml && mp[li+1]<mp[li]){
        cp = mp[li+1];
        li += 1;
    }

}
if(keyboard_check_pressed(vk_left)){
    if(cp>0){
        cp -= 1;
    }
    else{
        if(li>1){
            li -= 1;
            cp = mp[li];
        }

    }

}
if(keyboard_check_pressed(vk_right)){
    if(cp<mp[li]){
        cp += 1;
    }
    else{
        if(li<ml){
            li += 1;
            cp = 0;
        }

    }

}
