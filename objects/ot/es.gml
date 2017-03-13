// Step event // Checks it it is the start or end character

if(ch=1){
	
	if(image_index=50 && sprite_index=cs){
    	oc.sx = x;
    	oc.sy = y;
      	ch = 0;
    }
	
	if(image_index=57 && sprite_index=cs){
    	// THIS IS GENIUS!!!
      	// The object_cursor position is cursor_position[the variable] multiplied by 7
      	// So by this logic, I can reverse the to test whether an object that I don't technically have an id for, has a certain image index
    	if(oc.pc[x/7+1,y/8].image_index=48 && oc.pc[x/7+1,y/8].sprite_index=cs){
        	oc.ex = x;
        	oc.ey = y;
          	ch = 0;
        }
      
    }
  
}
