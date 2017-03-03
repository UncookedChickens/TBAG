// Detect if Modifier keys are pressed
// Backspace key
if(keyboard_check_pressed(8)){
    // Makes sure the cursor is at the end of the line
    // Also makes sure that there is already text on the line
    // Check that the object it's trying to delete is behind the cursor
    if(cp=mp[li] && mp[li]>0){
        // Then if all those values are checked, then delete the object
        with(pc[li,cp-1){
            instance_destroy();
        }

        // Takes away one from the cursors position
        // And prevents you from moving back to that space without typing
        cp -= 1;
        mp[li] -= 1;

    }
    // Makes sure that the cursors position is at 0
    // Also that the current line isn't the last line
    else if (cp=mp[li] && mp[li]<1 && li<ml) {
        // i in this for loop means the current line, i is equal to the new current line[li+1]
        // the purpose of this for loop is to count the instances of every line below the current line[li]
        for(i=li+1;i<=ml;i+=1){
            // dt[i] is the temporary instance count On a line
            dt[i] = mp[i]-1;

        }
        // This for loop cluster goes to every line and every position on every line and recreates the instances
        // scanned above one line above their previous line[translation: moves all text up one line]
        for(i=li;i<=ml;i+=1){
            for(j=0;j<=dt[i+1];j+=1){
                // See td.gml script[GML/scripts/td.gml] to understand what it does
                td();
            }

        }

        // Remove one line because you hit backspace
        ml -= 1;

    }
    // If you're at the beginning of a line and you're in the middle of the text
    else if(cp=0 && li<ml){
        // Checks every line of the number of instances on that line
        for(i=li;i<=ml;i+=1){
            dt[i] = mp[i]-1;
        }
        for(i=li-1;i<=ml;i+=1){
            for(j=0;j<dt[i+1];j+=1){
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
// Check if the space key is pressed
if(keyboard_check_pressed(32)){
    if(cp=mp[li] && mp[li]<43){
        pc[li,cp] = instance_create(cp*7,li*8,oc);
        pc[li,cp].image_index = 90;
        if(instance_exists(pc[li,cp])){
            cp += 1;
            mp[li] += 1;
        }

    }
    else if(cp<mp[li]){
        if(cp>0){
            mp[li] += 1;
            for(i=mp[li]-1;i>cp;i-=1){
                pc[li,i] = instance_create(i*7,li*8,oc);
                if(instance_exists(pc[li,i-1])){
                    pc[li,i].image_index = pc[li,i-1].image_index;
                }
                with(pc[li,i-1]){
                    instance_destroy();
                }

            }

        }
        if(cp=0){
            mp[li] += 1;
            for(i=mp[li]-1;i>cp;i-=1){
                if(i>=0){
                    pc[li,i] = instance_create(i*7,li*8,oc);
                    if(instance_exists(pc[li,i-1])){
                        pc[li,i].image_index = pc[li,i-1].image_index;
                    }
                    with(pc[li,i-1]){
                        instance_destroy();
                    }

                }

            }

        }

        pc[li,cp] = instance_create(cp*7,li*8,oc);
        pc[li,cp].image_index = 90;

    }

}
