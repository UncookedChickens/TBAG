//detect modifier keys//
//check lines 133 to end that is the spacebar key//
if(keyboard_check_pressed(8)){
    if(cp=mp[li] && cp>0){//if you're at the end of the current line//
        if(nt.x = x-7 && nt.y = y){
            with(nt){
                instance_destroy();
            }
            
        }
        
        cp -= 1;
        mp[li] -= 1;
        
    }
    else if(cp=0 && cp=mp[li] && li<ml){//when pressing backspace on empty line//
        li += 1;
        for(i=li;i<=ml;i+=1){//set up so nested for loop can check each line for how many instances there are on that line//
            for(j=1;j<=mp[li];j+=1){
                dt[i] += 1;
            }
        
        }
        li -= 1;
        for(i=li;i<=ml;i+=1){//nested for loop can delete old text on lines below the new current line and recreate [1]above//
            for(j=0;j<=dt[i+1];j+=1){//ammount of characters on below line to recreate on now current line//
                td();
            
            }
            
        }
        
        ml -= 1;
        
    }
    else if(cp=0 && li<ml){//when pressing backspace on populated line//
        for(i=li;i<=ml;i+=1){//set up so nested for loop can check each line for how many instances there are on that line//
            for(j=0;j<=mp[li];j+=1){
                dt[i] += 1;
            }
            
        }
        li -= 1;
        for(i=li;i<=ml;i+=1){//nested for loop can delete old text on lines below the new current line and recreate [1]above//
            for(j=0;j<dt[i+1];j+=1){//ammount of characters on below line to recreate on now current line//
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
    if(li=ml && cp=mp[li]){//if you're at the last of the document/level//
    //and if current cursor position is the max position on this line//
        li += 1;
        ml += 1;
        cp = 0;
    }
    else if(li<ml && cp=mp[li]){//if you're on the last line, and you're in the middle of that line//
        dt[li] = 0;
        
        for(i=li;i<ml;i+=1){
            for(j=cp;j<mp[i];i+=1){
                dt[i] += 1;
            }
            
        }
        li += 1;
        cp = 0;
        for(i=li;i<ml;i+=1){
            for(j=cp;j<mp[i];i+=1){
                dt[i] += 1;
            }
            
        }
        
        ml += 1;
        
    }

}
if(keyboard_check_pressed(vk_up)){
    if(li>1){
        if(mp[li-1]<mp[li]){
            cp = mp[li-1];
        }
        else{
            cp = cp;
        }
        
        li -= 1;
        
    }
    else{
        li = li;
    }
    
}
if(keyboard_check_pressed(vk_down)){
    if(li<ml){
        li += 1;
        if(mp[li-1]>mp[li]){
            cp = mp[li];
        }
        else{
            cp = cp;
        }
        
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
if(keyboard_check_pressed(32)){// 
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
