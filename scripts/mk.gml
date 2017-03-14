// Detect if Modifier keys are pressed
// Backspace key
if(kp(8)){
    // Makes sure the cursor is at the end of the line
    // Also makes sure that there is already text on the line
    // Check that the object it's trying to delete is behind the cursor
    if(mp[li]>0 && cp=mp[li]){
        // Then if all those values are checked, then delete the object
        dt(pc[li,cp-1]);

        // Takes away one from the cursors position
        // And prevents you from moving back to that space without typing
        cp -= 1;
        mp[li] -= 1;

    }
    // If you're at the beginning of a line and the line you're editing is in the middle of the document, but also not on line 1
    else if(cp=0 && li>1 && li<=ml && mp[li]>=0){
      	li -= 1;
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
    	cp=mp[li];
      	ml -= 1;
    }

}
// Check if the space key is pressed
if(kp(32)){

    if(cp=mp[li] && x<room_width){
        pc[li,cp] = instance_create(cp*7,li*8,ot);

        if(instance_exists(pc[li,cp])){
            cp += 1;
            mp[li] += 1;
        }

    }
    else if(cp<mp[li]){

        if(cp>=0){
            mp[li] += 1;

            for(i=mp[li];i>cp;i-=1){
                pc[li,i] = instance_create(i*7,li*8,ot);

                if(instance_exists(pc[li,i-1])){
                    pc[li,i].sprite_index = pc[li,i-1].sprite_index;
                    pc[li,i].image_index = pc[li,i-1].image_index;
                }

                dt(pc[li,cp-1]);

            }

        }

        pc[li,cp].image_index = 90;

    }

}
if(kp(vk_tab)){
	switch(global.md){
    	case 0:global.md=1 instance_create(sx,sy+10,op);break;
        case 1:global.md=0 dt(op);break;
    }

}
if(kp(vk_enter)){

    if(li=ml && cp=mp[li]){
        li += 1;
        ml += 1;
        cp = 0;
    }
    else if(li<ml && cp=mp[li]){

        for(i=li;i<ml;i+=1){
            tp[i] = mp[i]-cp;
        }

        li += 1;
        cp = 0;

        // For loops go here

        ml += 1;

    }

}

if(kp(vk_up)){
	
  	if(li>1){
      
    	if(mp[li-1]<mp[li]){
        	cp = mp[li-1];
    	}
    
        li-=1;
      
    }

}
if(kp(vk_down)){

  	if(li<ml){

    	if(mp[li+1]<mp[li]){
        	cp = mp[li+1];
    	}

    	li += 1;

    }

}
if(kp(vk_left)){

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
if(kp(vk_right)){

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
